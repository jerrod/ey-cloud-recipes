
queues({
  :all => {
    :groupa => {
      :inventory => [
        :cloning,
        :inventory,
        :inventory,
        :schedule,
        :notification
      ]
    },
    :groupb => {
      :volatile_pub => [
        :volatile_publication,
        :volatile_publication,
        :volatile_publication,
        :volatile_publication,
        :publication
      ],
      :pub => [
        :publication,
        :publication,
        :publication,
        :publication,
        :volatile_publication
      ],
      :inventory => [:inventory],
      :notification => [:notification]
    },
    :groupc => {
      :perf => [
          [:performance_aggregation,:gen_vendor_instance],
          [:performance_download,:gen_vendor_instance],
          [:performance_import,:gen_vendor_instance]
      ]
    },
    :groupd => {
      :gen_campaign => [
        [:gen_campaign,:gen_ad_group,:gen_keyword,:gen_ad,:gen_vendor_instance],
        [:gen_campaign,:gen_ad_group,:gen_keyword,:gen_ad,:gen_vendor_instance],
        [:gen_campaign,:gen_ad_group,:gen_keyword,:gen_ad,:gen_vendor_instance],
        [:gen_campaign,:gen_ad_group,:gen_keyword,:gen_ad,:gen_vendor_instance],
      ],
      :gen_ad_group => [
        [:gen_ad_group,:gen_keyword,:gen_ad,:gen_campaign,:gen_vendor_instance],
        [:gen_ad_group,:gen_keyword,:gen_ad,:gen_campaign,:gen_vendor_instance],
        [:gen_ad_group,:gen_keyword,:gen_ad,:gen_campaign,:gen_vendor_instance],
        [:gen_ad_group,:gen_keyword,:gen_ad,:gen_campaign,:gen_vendor_instance],
      ],
      :gen_ad => [
        [:gen_ad,:gen_ad_group,:gen_keyword,:gen_campaign,:gen_vendor_instance],
        [:gen_ad,:gen_ad_group,:gen_keyword,:gen_campaign,:gen_vendor_instance],
        [:gen_ad,:gen_ad_group,:gen_keyword,:gen_campaign,:gen_vendor_instance],
        [:gen_ad,:gen_ad_group,:gen_keyword,:gen_campaign,:gen_vendor_instance],
      ],
      :gen_keyword => [
        [:gen_keyword,:gen_ad,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
        [:gen_keyword,:gen_ad,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
        [:gen_keyword,:gen_ad,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
        [:gen_keyword,:gen_ad,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
      ]
    },
    :groupe => {
      :volatile_gen_campaign => [
        [:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_keyword,:volatile_gen_ad,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_keyword,:gen_ad,:gen_vendor_instance],
        [:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_keyword,:volatile_gen_ad,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_keyword,:gen_ad,:gen_vendor_instance],
        [:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_keyword,:volatile_gen_ad,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_keyword,:gen_ad,:gen_vendor_instance],
        [:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_keyword,:volatile_gen_ad],
      ],
      :gen_ad_group => [
        [:volatile_gen_ad_group,:volatile_gen_keyword,:volatile_gen_ad,:volatile_gen_campaign,:volatile_gen_vendor_instance,:gen_ad_group,:gen_keyword,:gen_ad,:gen_campaign,:gen_vendor_instance],
        [:volatile_gen_ad_group,:volatile_gen_keyword,:volatile_gen_ad,:volatile_gen_campaign,:volatile_gen_vendor_instance,:gen_ad_group,:gen_keyword,:gen_ad,:gen_campaign,:gen_vendor_instance],
        [:volatile_gen_ad_group,:volatile_gen_keyword,:volatile_gen_ad,:volatile_gen_campaign,:volatile_gen_vendor_instance,:gen_ad_group,:gen_keyword,:gen_ad,:gen_campaign,:gen_vendor_instance],
        [:volatile_gen_ad_group,:volatile_gen_keyword,:volatile_gen_ad,:volatile_gen_campaign,:volatile_gen_vendor_instance],
      ],
      :gen_ad => [
        [:volatile_gen_ad,:volatile_gen_ad_group,:volatile_gen_keyword,:volatile_gen_campaign,:volatile_gen_vendor_instance,:gen_ad,:gen_ad_group,:gen_keyword,:gen_campaign,:gen_vendor_instance],
        [:volatile_gen_ad,:volatile_gen_ad_group,:volatile_gen_keyword,:volatile_gen_campaign,:volatile_gen_vendor_instance,:gen_ad,:gen_ad_group,:gen_keyword,:gen_campaign,:gen_vendor_instance],
        [:volatile_gen_ad,:volatile_gen_ad_group,:volatile_gen_keyword,:volatile_gen_campaign,:volatile_gen_vendor_instance,:gen_ad,:gen_ad_group,:gen_keyword,:gen_campaign,:gen_vendor_instance],
        [:volatile_gen_ad,:volatile_gen_ad_group,:volatile_gen_keyword,:volatile_gen_campaign,:volatile_gen_vendor_instance],
      ],
      :gen_keyword => [
        [:volatile_gen_keyword,:volatile_gen_ad,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance,:gen_keyword,:gen_ad,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
        [:volatile_gen_keyword,:volatile_gen_ad,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance,:gen_keyword,:gen_ad,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
        [:volatile_gen_keyword,:volatile_gen_ad,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance,:gen_keyword,:gen_ad,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
        [:volatile_gen_keyword,:volatile_gen_ad,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
      ],
      :gen => [
        [:gen_campaign,:gen_ad_group,:gen_keyword,:gen_ad,:gen_vendor_instance],
        [:gen_ad_group,:gen_keyword,:gen_ad,:gen_campaign,:gen_vendor_instance],
        [:gen_ad,:gen_ad_group,:gen_keyword,:gen_campaign,:gen_vendor_instance],
        [:gen_keyword,:gen_ad,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
      ],
      :volatile_pub => [
        :volatile_publication,
        :volatile_publication,
        :publication
      ]
    },
    :groupf => {
      :perf => [
          [:performance_import,:gen_vendor_instance],
          [:performance_import,:gen_vendor_instance],
          [:performance_import,:gen_vendor_instance],
          [:performance_import,:gen_vendor_instance],
          [:performance_import,:gen_vendor_instance],
          [:performance_import,:gen_vendor_instance]
      ]
    },
    :groupg => {
      :gen_ad => [
        :gen_ad
      ]
    },
    :grouph => {
      :gen_ad => [
        :gen_ad,
        :gen_ad,
        :gen_ad,
        :gen_ad,
        :gen_ad,
        :gen_ad,
        :gen_ad,
        :gen_ad
      ]
    },
    :group_develop => {
      :generation => [
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:performance_download,:performance_import,:performance_aggregation],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:performance_download,:performance_import,:performance_aggregation],
        [:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:performance_download,:performance_import,:performance_aggregation],
        [:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:performance_download,:performance_import,:performance_aggregation],
      ],
      :publication => [
        [:publication,:volatile_publication,:performance_download,:performance_import,:performance_aggregation],
        [:publication,:volatile_publication,:performance_download,:performance_import,:performance_aggregation],
        [:volatile_publication,:publication,:performance_download,:performance_import,:performance_aggregation],
        [:volatile_publication,:publication,:performance_download,:performance_import,:performance_aggregation],
        ],
      :inventory => [
        [:inventory,:volatile_inventory,:schedule,:cloning,:notification,:performance_download,:performance_import,:performance_aggregation],
        [:inventory,:volatile_inventory,:schedule,:cloning,:notification,:performance_download,:performance_import,:performance_aggregation],
        [:inventory,:volatile_inventory,:schedule,:cloning,:notification,:performance_download,:performance_import,:performance_aggregation],
        [:inventory,:volatile_inventory,:schedule,:cloning,:notification,:performance_download,:performance_import,:performance_aggregation],
      ]
    },
    :group_misc => {
      :inventory => [
        [:volatile_inventory,:inventory,:performance_download,:performance_import,:performance_aggregation,:schedule,:cloning,:notification,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance],
        [:volatile_inventory,:inventory,:performance_download,:performance_import,:performance_aggregation,:schedule,:cloning,:notification,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance],
        [:volatile_inventory,:inventory,:performance_download,:performance_import,:performance_aggregation,:schedule,:cloning,:notification,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance],
        [:volatile_inventory,:inventory,:performance_download,:performance_import,:performance_aggregation,:schedule,:cloning,:notification,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance],
        [:volatile_inventory,:inventory,:performance_download,:performance_import,:performance_aggregation,:schedule,:cloning,:notification,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance],
        [:volatile_inventory,:inventory,:performance_download,:performance_import,:performance_aggregation,:schedule,:cloning,:notification,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance],
        [:volatile_inventory,:inventory,:performance_download,:performance_import,:performance_aggregation,:schedule,:cloning,:notification,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance],
        [:volatile_inventory,:inventory,:performance_download,:performance_import,:performance_aggregation,:schedule,:cloning,:notification,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance],
      ],
      :performance => [
        [:performance_download,:performance_import,:performance_aggregation,:volatile_inventory,:inventory,:schedule,:cloning,:notification,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance],
        [:performance_download,:performance_import,:performance_aggregation,:volatile_inventory,:inventory,:schedule,:cloning,:notification,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance],
        [:performance_download,:performance_import,:performance_aggregation,:volatile_inventory,:inventory,:schedule,:cloning,:notification,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance],
        [:performance_download,:performance_import,:performance_aggregation,:volatile_inventory,:inventory,:schedule,:cloning,:notification,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance],
        [:performance_download,:performance_import,:performance_aggregation,:volatile_inventory,:inventory,:schedule,:cloning,:notification,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance],
        [:performance_download,:performance_import,:performance_aggregation,:volatile_inventory,:inventory,:schedule,:cloning,:notification,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance],
        [:performance_download,:performance_import,:performance_aggregation,:volatile_inventory,:inventory,:schedule,:cloning,:notification,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance],
        [:performance_download,:performance_import,:performance_aggregation,:volatile_inventory,:inventory,:schedule,:cloning,:notification,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance],
      ]
    },
    :group_pub => {
      :pub => [
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:publication,:volatile_publication,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:performance_download],
        [:volatile_publication,:publication,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_vendor_instance,:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:performance_download],
        [:volatile_publication,:publication,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_vendor_instance,:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:performance_download],
        [:volatile_publication,:publication,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_vendor_instance,:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:performance_download],
        [:volatile_publication,:publication,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_vendor_instance,:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:performance_download],
        [:volatile_publication,:publication,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_vendor_instance,:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:performance_download],
        [:volatile_publication,:publication,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_vendor_instance,:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:performance_download],
        [:volatile_publication,:publication,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_vendor_instance,:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:performance_download],
        [:volatile_publication,:publication,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_vendor_instance,:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:performance_download],
      ],
    },
    :group_gen => {
      :gen_ad => [
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:publication,:volatile_publication,:performance_download],
        [:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_publication,:publication,:performance_download],
        [:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_publication,:publication,:performance_download],
        [:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_publication,:publication,:performance_download],
        [:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_publication,:publication,:performance_download],
        [:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_publication,:publication,:performance_download],
        [:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_publication,:publication,:performance_download],
        [:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_publication,:publication,:performance_download],
        [:volatile_gen_campaign,:volatile_gen_ad_group,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_vendor_instance,:gen_campaign,:gen_ad_group,:gen_ad,:gen_keyword,:gen_vendor_instance,:volatile_publication,:publication,:performance_download],
      ]
    }
  }
})

