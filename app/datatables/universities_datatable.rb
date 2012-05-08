#encoding:UTF-8
class UniversitiesDataTable
  delegate :params,  :link_to,  to: :@view
  
  def initialize(view)
    @view = view    
  end
  
  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: University.count,
      iTotalDisplayRecords: universities.total_entries,
      aaData: data    
    }
  end
  
  private
  
  def data
    universities.map do |university|
      [
        lint_to(university.name, university)        
      ]
    end
  end
  
  def universities
    @universities ||= fetch_universities    
  end
  
  def fetch_universities
    universities = University.order("#{sort_column} #{sort_direction}")
    universities = universities.page(page).per(per)
    if params[:sSearch].present?
      universities = universities.where("name like :search", search: "%{params[:sSearch]}%")
    end
    universities
  end
  
  def page
    params[:iDisplayStart].to_i/per + 1    
  end
  
  def per
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end
  
  def sort_column
    columns = %w[name]
    columns[params[:iSortCol_0].to_i]      
  end
  
  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"    
  end
end
