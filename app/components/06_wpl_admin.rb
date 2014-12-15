SrComponent.define_component("ClassifierList",
                             :base => 'base',
                             :decoration=> "/decoration/decoration_classifiers1",
                             :data_string=> %q{@campaign.classifier_list(params[:classifier_id])},
                             :partial => 'wpl_admin/wpl_classifier/classifier',
                             :button => 'wpl_admin/wpl_classifier/add_button',
                             :xhtml_id => 'existing_fields',
                             :title => 'Classifier List',
                             :header => ['Field', 'Value', 'Delete'],
                             :empty_message => 'No Data Found',
                             :pagination => false,
                             :data_as => :collection
)