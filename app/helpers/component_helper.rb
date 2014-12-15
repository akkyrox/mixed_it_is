module ComponentHelper


def component_table_list(args)
  default_args = {
      :decoration => "app/views/patients/index.html.erb"
  }
  args= default_args.merge(args)
  sr_render_widget(args)
end

  end