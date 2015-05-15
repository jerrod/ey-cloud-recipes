
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
      :inventory => [:inventory]
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
    }
  }
})

