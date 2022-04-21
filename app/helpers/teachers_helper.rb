module TeachersHelper
  def sort_link(column:, label:)
    if column == params[:column]
      link_to(label, root_path(column: column, direction: next_direction))
    else
      link_to(label, root_path(column: column, direction: 'asc'))
    end
  end
  
  def next_direction
    params[:direction] == 'asc' ? 'desc' : 'asc'
  end

  def sort_indicator
    heroicon icon, variant: :outline,
      options: {
        class: 'w-5 h-5 pt-1 ml-3 text-white group-hover:text-white transition duration-75'
      }
  end

  def icon
    params[:direction] == 'asc' ? 'sort-ascending' : 'sort-descending'
  end
end
