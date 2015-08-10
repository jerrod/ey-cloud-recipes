
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
      :gen_campaign => [ :gen_campaign ],
      :gen_ad_group => [ :gen_ad_group ],
      :gen_ad => [ :gen_ad ],
      :gen_keyword => [ :gen_keyword ],
      :volatile_gen_campaign => [ :volatile_gen_campaign ],
      :volatile_gen_ad_group => [ :volatile_gen_ad_group ],
      :volatile_gen_ad => [ :volatile_gen_ad ],
      :volatile_gen_keyword => [ :volatile_gen_keyword ],
      :inventory => [:inventory, :schedule, :cloning, :notification ],
    },
    :group_misc => {
      :inventory => [
        [:inventory,:performance_download,:performance_import,:performance_aggregation,:schedule,:cloning,:notification],
        [:inventory,:performance_download,:performance_import,:performance_aggregation,:schedule,:cloning,:notification],
        [:inventory,:performance_download,:performance_import,:performance_aggregation,:schedule,:cloning,:notification],
        [:inventory,:performance_download,:performance_import,:performance_aggregation,:schedule,:cloning,:notification],
        [:inventory,:performance_download,:performance_import,:performance_aggregation,:schedule,:cloning,:notification],
        [:inventory,:performance_download,:performance_import,:performance_aggregation,:schedule,:cloning,:notification],
        [:inventory,:performance_download,:performance_import,:performance_aggregation,:schedule,:cloning,:notification],
        [:inventory,:performance_download,:performance_import,:performance_aggregation,:schedule,:cloning,:notification],
      ],
      :performance => [
        [:performance_download,:performance_import,:performance_aggregation,:inventory,:schedule,:cloning,:notification],
        [:performance_download,:performance_import,:performance_aggregation,:inventory,:schedule,:cloning,:notification],
        [:performance_download,:performance_import,:performance_aggregation,:inventory,:schedule,:cloning,:notification],
        [:performance_download,:performance_import,:performance_aggregation,:inventory,:schedule,:cloning,:notification],
        [:performance_download,:performance_import,:performance_aggregation,:inventory,:schedule,:cloning,:notification],
        [:performance_download,:performance_import,:performance_aggregation,:inventory,:schedule,:cloning,:notification],
        [:performance_download,:performance_import,:performance_aggregation,:inventory,:schedule,:cloning,:notification],
        [:performance_download,:performance_import,:performance_aggregation,:inventory,:schedule,:cloning,:notification],
      ]
    },
    :group_pub => {
      :pub => [
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:publication,:volatile_publication],
        [:volatile_publication,:publication],
        [:volatile_publication,:publication],
        [:volatile_publication,:publication],
        [:volatile_publication,:publication],
        [:volatile_publication,:publication],
        [:volatile_publication,:publication],
        [:volatile_publication,:publication],
        [:volatile_publication,:publication],
      ],
    },
    :group_gen => {
      :gen_ad => [
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance,:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance],
        [:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance,:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
        [:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance,:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
        [:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance,:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
        [:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance,:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
        [:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance,:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
        [:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance,:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
        [:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance,:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
        [:volatile_gen_ad,:volatile_gen_keyword,:volatile_gen_ad_group,:volatile_gen_campaign,:volatile_gen_vendor_instance,:gen_ad,:gen_keyword,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
      ]
    }
  }
})

