
{} (:package |fuzzy-filter)
  :configs $ {} (:init-fn |fuzzy-filter.main/main!) (:output |src) (:port 6001) (:reload-fn |fuzzy-filter.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.8)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
  :entries $ {}
  :files $ {}
    |fuzzy-filter.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461830530) (:by |root) (:text |reel)
              |v $ %{} :Expr (:at nil) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507461833421) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at nil) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at nil) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461835738) (:by |root) (:text |store)
                          |j $ %{} :Expr (:at nil) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461837276) (:by |root) (:text |:store)
                              |j $ %{} :Leaf (:at 1507461838285) (:by |root) (:text |reel)
                      |j $ %{} :Expr (:at nil) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509727105928) (:by |root) (:text |states)
                          |j $ %{} :Expr (:at nil) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509727107223) (:by |root) (:text |:states)
                              |j $ %{} :Leaf (:at 1509727108033) (:by |root) (:text |store)
                  |T $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at nil) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at nil) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |merge)
                                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui/global)
                                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui/column)
                                  |v $ %{} :Expr (:at 1537902442310) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537902444388) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1537902445048) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537902447286) (:by |root) (:text |:padding)
                                          |j $ %{} :Leaf (:at 1537902448788) (:by |root) (:text |16)
                      |q $ %{} :Expr (:at 1537552778164) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1537552778854) (:by |root) (:text |div)
                          |L $ %{} :Expr (:at 1537552779034) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1537552779429) (:by |root) (:text |{})
                          |T $ %{} :Expr (:at 1537552476672) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1537552477552) (:by |root) (:text |div)
                              |L $ %{} :Expr (:at 1537552477753) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1537552478164) (:by |root) (:text |{})
                              |T $ %{} :Expr (:at 1537552392307) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1537552393729) (:by |root) (:text |input)
                                  |j $ %{} :Expr (:at 1537552393951) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537552394366) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1537552395735) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537552397621) (:by |root) (:text |:style)
                                          |j $ %{} :Leaf (:at 1537552400767) (:by |root) (:text |ui/input)
                                      |r $ %{} :Expr (:at 1537552425022) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537552426501) (:by |root) (:text |:value)
                                          |j $ %{} :Expr (:at 1537552426800) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537552436325) (:by |root) (:text |:content)
                                              |j $ %{} :Leaf (:at 1537552437728) (:by |root) (:text |store)
                                      |t $ %{} :Expr (:at 1537552463139) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537552465870) (:by |root) (:text |:placeholder)
                                          |j $ %{} :Leaf (:at 1537552471622) (:by |root) (:text "|\"text")
                                      |v $ %{} :Expr (:at 1537552438918) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537552442868) (:by |root) (:text |:on-input)
                                          |j $ %{} :Expr (:at 1537552443209) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537552444309) (:by |root) (:text |fn)
                                              |j $ %{} :Expr (:at 1537552444574) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1537552445145) (:by |root) (:text |e)
                                                  |j $ %{} :Leaf (:at 1537552446455) (:by |root) (:text |d!)
                                                  |r $ %{} :Leaf (:at 1537552447174) (:by |root) (:text |m!)
                                              |r $ %{} :Expr (:at 1537552448123) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1537552449905) (:by |root) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1537552450965) (:by |root) (:text |:content)
                                                  |r $ %{} :Expr (:at 1537552459946) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1537552460691) (:by |root) (:text |:value)
                                                      |j $ %{} :Leaf (:at 1537552460922) (:by |root) (:text |e)
                          |b $ %{} :Expr (:at 1537552833361) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1537552836131) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1537552837559) (:by |root) (:text |nil)
                              |r $ %{} :Leaf (:at 1537552837830) (:by |root) (:text |8)
                          |j $ %{} :Expr (:at 1537552476672) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1537552477552) (:by |root) (:text |div)
                              |L $ %{} :Expr (:at 1537552477753) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1537552478164) (:by |root) (:text |{})
                              |T $ %{} :Expr (:at 1537552392307) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1537552393729) (:by |root) (:text |input)
                                  |j $ %{} :Expr (:at 1537552393951) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537552394366) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1537552395735) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537552397621) (:by |root) (:text |:style)
                                          |j $ %{} :Leaf (:at 1537552400767) (:by |root) (:text |ui/input)
                                      |r $ %{} :Expr (:at 1537552425022) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537552426501) (:by |root) (:text |:value)
                                          |j $ %{} :Expr (:at 1537552426800) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537552784704) (:by |root) (:text |:query)
                                              |j $ %{} :Leaf (:at 1537552437728) (:by |root) (:text |store)
                                      |t $ %{} :Expr (:at 1537552463139) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537552465870) (:by |root) (:text |:placeholder)
                                          |j $ %{} :Leaf (:at 1537552787051) (:by |root) (:text "|\"query")
                                      |v $ %{} :Expr (:at 1537552438918) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537552442868) (:by |root) (:text |:on-input)
                                          |j $ %{} :Expr (:at 1537552443209) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537552444309) (:by |root) (:text |fn)
                                              |j $ %{} :Expr (:at 1537552444574) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1537552445145) (:by |root) (:text |e)
                                                  |j $ %{} :Leaf (:at 1537552446455) (:by |root) (:text |d!)
                                                  |r $ %{} :Leaf (:at 1537552447174) (:by |root) (:text |m!)
                                              |r $ %{} :Expr (:at 1537552448123) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1537552449905) (:by |root) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1537552789529) (:by |root) (:text |:query)
                                                  |r $ %{} :Expr (:at 1537552459946) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1537552460691) (:by |root) (:text |:value)
                                                      |j $ %{} :Leaf (:at 1537552460922) (:by |root) (:text |e)
                      |t $ %{} :Expr (:at 1537804573458) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1537804578214) (:by |root) (:text |let)
                          |T $ %{} :Expr (:at 1537804598721) (:by |root)
                            :data $ {}
                              |T $ %{} :Expr (:at 1537804578941) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1537804590911) (:by |root) (:text |result)
                                  |L $ %{} :Expr (:at 1537804594918) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537902490055) (:by |root) (:text |parse-by-letter)
                                      |j $ %{} :Expr (:at 1537804594918) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537804594918) (:by |root) (:text |:content)
                                          |j $ %{} :Leaf (:at 1537804594918) (:by |root) (:text |store)
                                      |r $ %{} :Expr (:at 1537804594918) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537804594918) (:by |root) (:text |:query)
                                          |j $ %{} :Leaf (:at 1537804594918) (:by |root) (:text |store)
                              |j $ %{} :Expr (:at 1537903150715) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1537903162739) (:by |root) (:text |word-result)
                                  |j $ %{} :Expr (:at 1537903154898) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537903155221) (:by |root) (:text |parse-by-word)
                                      |j $ %{} :Expr (:at 1537903156408) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537903157251) (:by |root) (:text |:content)
                                          |j $ %{} :Leaf (:at 1537903158089) (:by |root) (:text |store)
                                      |r $ %{} :Expr (:at 1537903158533) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537903159474) (:by |root) (:text |:query)
                                          |j $ %{} :Leaf (:at 1537903160720) (:by |root) (:text |store)
                          |j $ %{} :Expr (:at 1537804600700) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1537804601135) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1537804602422) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1537804602772) (:by |root) (:text |{})
                              |r $ %{} :Expr (:at 1537804605402) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1537804605402) (:by |root) (:text |pre)
                                  |j $ %{} :Expr (:at 1537804605402) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537804605402) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1537804605402) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537804605402) (:by |root) (:text |:style)
                                          |j $ %{} :Expr (:at 1537804605402) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537804605402) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1537804605402) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1537804605402) (:by |root) (:text |:font-family)
                                                  |j $ %{} :Leaf (:at 1537804605402) (:by |root) (:text |ui/font-code)
                                  |r $ %{} :Expr (:at 1629616612344) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629616613023) (:by |rJG4IHzWf) (:text |code)
                                      |L $ %{} :Expr (:at 1629616613762) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629616614191) (:by |rJG4IHzWf) (:text |{})
                                      |T $ %{} :Expr (:at 1537804605402) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537804605402) (:by |root) (:text |<>)
                                          |j $ %{} :Expr (:at 1629616695855) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1629616696744) (:by |rJG4IHzWf) (:text |.trim)
                                              |T $ %{} :Expr (:at 1629616570141) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1629616575556) (:by |rJG4IHzWf) (:text |format-cirru-edn)
                                                  |T $ %{} :Leaf (:at 1537804623638) (:by |root) (:text |result)
                              |t $ %{} :Expr (:at 1537804605402) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1537804605402) (:by |root) (:text |pre)
                                  |j $ %{} :Expr (:at 1537804605402) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537804605402) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1537804605402) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537804605402) (:by |root) (:text |:style)
                                          |j $ %{} :Expr (:at 1537804605402) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537804605402) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1537804605402) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1537804605402) (:by |root) (:text |:font-family)
                                                  |j $ %{} :Leaf (:at 1537804605402) (:by |root) (:text |ui/font-code)
                                  |r $ %{} :Expr (:at 1629616602088) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629616602883) (:by |rJG4IHzWf) (:text |code)
                                      |L $ %{} :Expr (:at 1629616603199) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629616603563) (:by |rJG4IHzWf) (:text |{})
                                      |T $ %{} :Expr (:at 1537804605402) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537804605402) (:by |root) (:text |<>)
                                          |j $ %{} :Expr (:at 1629616693533) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1629616694431) (:by |rJG4IHzWf) (:text |.trim)
                                              |T $ %{} :Expr (:at 1629616578483) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1629616579024) (:by |rJG4IHzWf) (:text |format-cirru-edn)
                                                  |T $ %{} :Leaf (:at 1537903166033) (:by |root) (:text |word-result)
                              |v $ %{} :Expr (:at 1537804627354) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1537804652519) (:by |root) (:text |when)
                                  |j $ %{} :Expr (:at 1537804629535) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537842988549) (:by |rJG4IHzWf) (:text |:matches?)
                                      |j $ %{} :Leaf (:at 1537804631215) (:by |root) (:text |result)
                                  |r $ %{} :Expr (:at 1537903690895) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1537903692340) (:by |root) (:text |div)
                                      |L $ %{} :Expr (:at 1537903692580) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537903692909) (:by |root) (:text |{})
                                      |T $ %{} :Expr (:at 1537804634734) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537804637579) (:by |root) (:text |comp-visual)
                                          |j $ %{} :Expr (:at 1537804641482) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537843019240) (:by |rJG4IHzWf) (:text |:chunks)
                                              |j $ %{} :Leaf (:at 1537804648494) (:by |root) (:text |result)
                                          |r $ %{} :Expr (:at 1537805138738) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537805139875) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1537805309852) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1537805312479) (:by |root) (:text |:style-rest)
                                                  |j $ %{} :Expr (:at 1537805313449) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1537805313787) (:by |root) (:text |{})
                                                      |j $ %{} :Expr (:at 1537805314031) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1537805315271) (:by |root) (:text |:color)
                                                          |j $ %{} :Expr (:at 1537805315527) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1537805315845) (:by |root) (:text |hsl)
                                                              |j $ %{} :Leaf (:at 1537805316116) (:by |root) (:text |0)
                                                              |r $ %{} :Leaf (:at 1537805316802) (:by |root) (:text |0)
                                                              |v $ %{} :Leaf (:at 1537805317242) (:by |root) (:text |70)
                              |x $ %{} :Expr (:at 1537804627354) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1537804652519) (:by |root) (:text |when)
                                  |j $ %{} :Expr (:at 1537804629535) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537842988549) (:by |rJG4IHzWf) (:text |:matches?)
                                      |j $ %{} :Leaf (:at 1537903684788) (:by |root) (:text |word-result)
                                  |r $ %{} :Expr (:at 1537903694453) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1537903695962) (:by |root) (:text |div)
                                      |L $ %{} :Expr (:at 1537903696264) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537903697006) (:by |root) (:text |{})
                                      |T $ %{} :Expr (:at 1537804634734) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537804637579) (:by |root) (:text |comp-visual)
                                          |j $ %{} :Expr (:at 1537804641482) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537843019240) (:by |rJG4IHzWf) (:text |:chunks)
                                              |j $ %{} :Leaf (:at 1537903686147) (:by |root) (:text |word-result)
                                          |r $ %{} :Expr (:at 1537805138738) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537805139875) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1537805309852) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1537805312479) (:by |root) (:text |:style-rest)
                                                  |j $ %{} :Expr (:at 1537805313449) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1537805313787) (:by |root) (:text |{})
                                                      |j $ %{} :Expr (:at 1537805314031) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1537805315271) (:by |root) (:text |:color)
                                                          |j $ %{} :Expr (:at 1537805315527) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1537805315845) (:by |root) (:text |hsl)
                                                              |j $ %{} :Leaf (:at 1537805316116) (:by |root) (:text |0)
                                                              |r $ %{} :Leaf (:at 1537805316802) (:by |root) (:text |0)
                                                              |v $ %{} :Leaf (:at 1537805317242) (:by |root) (:text |70)
                      |x $ %{} :Expr (:at 1521954055333) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1521954057510) (:by |root) (:text |when)
                          |L $ %{} :Leaf (:at 1521954059290) (:by |root) (:text |dev?)
                          |T $ %{} :Expr (:at nil) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461815046) (:by |root) (:text |comp-reel)
                              |b $ %{} :Expr (:at 1629616368318) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1629616369018) (:by |rJG4IHzWf) (:text |>>)
                                  |T $ %{} :Leaf (:at 1509727101297) (:by |root) (:text |states)
                                  |j $ %{} :Leaf (:at 1629616369678) (:by |rJG4IHzWf) (:text |:reel)
                              |j $ %{} :Leaf (:at 1507461840459) (:by |root) (:text |reel)
                              |r $ %{} :Expr (:at nil) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507461841342) (:by |root) (:text |{})
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at nil) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fuzzy-filter.comp.container)
            |v $ %{} :Expr (:at nil) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629616118672) (:by |rJG4IHzWf) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508946162679) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1509727116530) (:by |root) (:text |>>)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                        |xT $ %{} :Leaf (:at 1512359490531) (:by |rJG4IHzWf) (:text |textarea)
                        |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                        |yT $ %{} :Leaf (:at 1537552408438) (:by |root) (:text |input)
                        |yj $ %{} :Leaf (:at 1537552817346) (:by |root) (:text |pre)
                        |yr $ %{} :Leaf (:at 1629616606384) (:by |rJG4IHzWf) (:text |code)
                |x $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                |y $ %{} :Expr (:at nil) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507461846175) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1507461855480) (:by |root) (:text |reel.comp.reel)
                    |r $ %{} :Leaf (:at 1507461856264) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507461856706) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1507461858342) (:by |root) (:text |comp-reel)
                |yT $ %{} :Expr (:at 1519699088529) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1519699088805) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1519699092590) (:by |root) (:text |respo-md.comp.md)
                    |r $ %{} :Leaf (:at 1519699093410) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519699093683) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1519699093922) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1519699096732) (:by |root) (:text |comp-md)
                |yj $ %{} :Expr (:at 1521954061310) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1521954061645) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527788377809) (:by |root) (:text |fuzzy-filter.config)
                    |r $ %{} :Leaf (:at 1521954064826) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521954065004) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1521954065219) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1521954067604) (:by |root) (:text |dev?)
                |yr $ %{} :Expr (:at 1537552796860) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1537552796860) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1537552796860) (:by |root) (:text |fuzzy-filter.core)
                    |r $ %{} :Leaf (:at 1537552796860) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1537552796860) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1537552796860) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1537902493693) (:by |root) (:text |parse-by-letter)
                        |r $ %{} :Leaf (:at 1537903141688) (:by |root) (:text |parse-by-word)
                |yv $ %{} :Expr (:at 1537804563432) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1537804563432) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1537804563432) (:by |root) (:text |fuzzy-filter.comp.visual)
                    |r $ %{} :Leaf (:at 1537804563432) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1537804563432) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1537804563432) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1537804563432) (:by |root) (:text |comp-visual)
    |fuzzy-filter.comp.visual $ %{} :FileEntry
      :defs $ {}
        |comp-visual $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1537804433130) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1537804496655) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1537804433130) (:by |root) (:text |comp-visual)
              |r $ %{} :Expr (:at 1537804433130) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1537804509627) (:by |root) (:text |pieces)
                  |j $ %{} :Leaf (:at 1537805163801) (:by |root) (:text |options)
              |v $ %{} :Expr (:at 1537804751680) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1537804753258) (:by |root) (:text |list->)
                  |L $ %{} :Expr (:at 1537804758004) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1537804758395) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1629616547637) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616550130) (:by |rJG4IHzWf) (:text |:style)
                          |j $ %{} :Expr (:at 1629616550305) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629616550646) (:by |rJG4IHzWf) (:text |{})
                              |j $ %{} :Expr (:at 1629616550944) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616552740) (:by |rJG4IHzWf) (:text |:display)
                                  |j $ %{} :Leaf (:at 1629616556108) (:by |rJG4IHzWf) (:text |:inline-block)
                  |f $ %{} :Expr (:at 1537804760342) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629616495290) (:by |rJG4IHzWf) (:text |->)
                      |j $ %{} :Leaf (:at 1537804763091) (:by |root) (:text |pieces)
                      |r $ %{} :Expr (:at 1537804764410) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1537804771777) (:by |root) (:text |map-indexed)
                          |j $ %{} :Expr (:at 1537804765798) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1537804766121) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1537804766474) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1537804774226) (:by |root) (:text |idx)
                                  |j $ %{} :Leaf (:at 1537804778180) (:by |root) (:text |chunk)
                              |r $ %{} :Expr (:at 1537804783116) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1537804783514) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1537804784315) (:by |root) (:text |idx)
                                  |r $ %{} :Expr (:at 1537804785282) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537804803698) (:by |root) (:text |span)
                                      |j $ %{} :Expr (:at 1537804786132) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537804786492) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1537804805746) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537804809014) (:by |root) (:text |:inner-text)
                                              |j $ %{} :Expr (:at 1537804811208) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1537804815649) (:by |root) (:text |last)
                                                  |T $ %{} :Leaf (:at 1537804813295) (:by |root) (:text |chunk)
                                          |r $ %{} :Expr (:at 1537805001737) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537805004695) (:by |root) (:text |:style)
                                              |j $ %{} :Expr (:at 1537805385591) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1537805387993) (:by |root) (:text |merge)
                                                  |L $ %{} :Expr (:at 1537805390856) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1537805392808) (:by |root) (:text |:style-base)
                                                      |j $ %{} :Leaf (:at 1537805393673) (:by |root) (:text |options)
                                                  |T $ %{} :Expr (:at 1537805012031) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1537805167677) (:by |root) (:text |if)
                                                      |j $ %{} :Expr (:at 1537805020784) (:by |root)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1537805021331) (:by |root) (:text |=)
                                                          |L $ %{} :Leaf (:at 1545586204177) (:by |root) (:text |:hit)
                                                          |T $ %{} :Expr (:at 1537805014653) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1537805018064) (:by |root) (:text |first)
                                                              |j $ %{} :Leaf (:at 1537805020226) (:by |root) (:text |chunk)
                                                      |r $ %{} :Expr (:at 1537805099124) (:by |root)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1537805101229) (:by |root) (:text |merge)
                                                          |T $ %{} :Expr (:at 1537805024495) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1537805024932) (:by |root) (:text |{})
                                                              |j $ %{} :Expr (:at 1537805025454) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1537805027671) (:by |root) (:text |:font-weight)
                                                                  |j $ %{} :Leaf (:at 1537805028891) (:by |root) (:text |:bold)
                                                          |j $ %{} :Expr (:at 1537805151770) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1545586227564) (:by |root) (:text |:style-hit)
                                                              |j $ %{} :Leaf (:at 1537805162043) (:by |root) (:text |options)
                                                      |v $ %{} :Expr (:at 1537805169099) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1537805175233) (:by |root) (:text |:style-rest)
                                                          |j $ %{} :Leaf (:at 1537805178760) (:by |root) (:text |options)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1537804418622) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1537804418622) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1537804418622) (:by |root) (:text |fuzzy-filter.comp.visual)
            |r $ %{} :Expr (:at 1537804436236) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1537804436236) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |hsl.core)
                    |r $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1537804436236) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1537804436236) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at 1537804436236) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1542731643086) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1537804436236) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |cursor->)
                        |u $ %{} :Leaf (:at 1537804755675) (:by |root) (:text |list->)
                        |y $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |<>)
                        |yT $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |div)
                        |yj $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |button)
                        |yr $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |textarea)
                        |yv $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |span)
                        |yx $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |input)
                        |yy $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |pre)
                |y $ %{} :Expr (:at 1537804436236) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1537804436236) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1537804436236) (:by |root) (:text |=<)
    |fuzzy-filter.config $ %{} :FileEntry
      :defs $ {}
        |bundle-builds $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1528097494445) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1528097496062) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1528097494445) (:by |root) (:text |bundle-builds)
              |r $ %{} :Expr (:at 1528097494445) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1528097498660) (:by |root) (:text |#{})
                  |j $ %{} :Leaf (:at 1528097501085) (:by |root) (:text "|\"release")
                  |r $ %{} :Leaf (:at 1528097507902) (:by |root) (:text "|\"local-bundle")
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629616211823) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1629616211823) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1629616211823) (:by |rJG4IHzWf) (:text |dev?)
              |r $ %{} :Expr (:at 1629616211823) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629616211823) (:by |rJG4IHzWf) (:text |=)
                  |j $ %{} :Leaf (:at 1629616211823) (:by |rJG4IHzWf) (:text "|\"dev")
                  |r $ %{} :Expr (:at 1629616211823) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629616211823) (:by |rJG4IHzWf) (:text |get-env)
                      |j $ %{} :Leaf (:at 1629616211823) (:by |rJG4IHzWf) (:text "|\"mode")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1518157327696) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518157345496) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1518157327696) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1518157327696) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157346643) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1518157346876) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1518157348163) (:by |root) (:text |:storage)
                      |j $ %{} :Leaf (:at 1537467712225) (:by |root) (:text "|\"fuzzy-filter")
                  |r $ %{} :Expr (:at 1527526861413) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527526864597) (:by |root) (:text |:dev-ui)
                      |j $ %{} :Leaf (:at 1527526903571) (:by |root) (:text "|\"http://localhost:8100/main.css")
                  |v $ %{} :Expr (:at 1527526865931) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527526868617) (:by |root) (:text |:release-ui)
                      |j $ %{} :Leaf (:at 1527526887965) (:by |root) (:text "|\"http://cdn.tiye.me/favored-fonts/main.css")
                  |w $ %{} :Expr (:at 1528008960614) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528008962775) (:by |root) (:text |:cdn-url)
                      |j $ %{} :Leaf (:at 1537467718358) (:by |root) (:text "|\"http://cdn.tiye.me/fuzzy-filter/")
                  |wT $ %{} :Expr (:at 1528008973460) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528008977180) (:by |root) (:text |:cdn-folder)
                      |j $ %{} :Leaf (:at 1537467720493) (:by |root) (:text "|\"tiye.me:cdn/fuzzy-filter")
                  |y $ %{} :Expr (:at 1527868456422) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527868457305) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1537467724098) (:by |root) (:text "|\"Fuzzy Filter")
                  |yT $ %{} :Expr (:at 1527868457696) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527868458476) (:by |root) (:text |:icon)
                      |j $ %{} :Leaf (:at 1527868478815) (:by |root) (:text "|\"http://cdn.tiye.me/logo/mvc-works.png")
                  |yr $ %{} :Expr (:at 1528009081454) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528009091856) (:by |root) (:text |:upload-folder)
                      |j $ %{} :Leaf (:at 1537467728425) (:by |root) (:text "|\"tiye.me:repo/mvc-works/fuzzy-filter/")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788237503) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |fuzzy-filter.config)
            |r $ %{} :Expr (:at 1528096830557) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1528096832720) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1528096834008) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1528096834172) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1528096836503) (:by |root) (:text |fuzzy-filter.util)
                    |r $ %{} :Leaf (:at 1528096837559) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1528096837768) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1528096839259) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1528096846216) (:by |root) (:text |get-env!)
    |fuzzy-filter.core $ %{} :FileEntry
      :defs $ {}
        |conflate-chunks $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1537803104545) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1629616235577) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1537803104545) (:by |root) (:text |conflate-chunks)
              |r $ %{} :Expr (:at 1537803120050) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1537803120721) (:by |root) (:text |xs)
              |v $ %{} :Expr (:at 1537803122879) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629616223124) (:by |rJG4IHzWf) (:text |conflate-chunks-iter)
                  |j $ %{} :Expr (:at 1537803131008) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1537803130354) (:by |root) (:text |[])
                  |r $ %{} :Leaf (:at 1537803145317) (:by |root) (:text |nil)
                  |v $ %{} :Leaf (:at 1537803137115) (:by |root) (:text |xs)
        |conflate-chunks-iter $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629616223848) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1629616227263) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1629616223848) (:by |rJG4IHzWf) (:text |conflate-chunks-iter)
              |r $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |acc)
                  |j $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |buffer)
                  |r $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |xs)
              |v $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |empty?)
                      |j $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |xs)
                  |r $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |nil?)
                          |j $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |buffer)
                      |r $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |acc)
                      |v $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |conj)
                          |j $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |acc)
                          |r $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |buffer)
                  |v $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |let)
                      |j $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |x0)
                              |j $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |first)
                                  |j $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |xs)
                      |r $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |if)
                          |j $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |nil?)
                              |j $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |buffer)
                          |r $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |recur)
                              |j $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |acc)
                              |r $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |x0)
                              |v $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |rest)
                                  |j $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |xs)
                          |v $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |if)
                              |j $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |=)
                                  |j $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |first)
                                      |j $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |buffer)
                                  |r $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |first)
                                      |j $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |x0)
                              |r $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |recur)
                                  |j $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |acc)
                                  |r $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |[])
                                      |j $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |first)
                                          |j $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |buffer)
                                      |r $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |str)
                                          |j $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |last)
                                              |j $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |buffer)
                                          |r $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |last)
                                              |j $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |x0)
                                  |v $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |rest)
                                      |j $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |xs)
                              |v $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |recur)
                                  |j $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |conj)
                                      |j $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |acc)
                                      |r $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |buffer)
                                  |r $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |x0)
                                  |v $ %{} :Expr (:at 1629616224651) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |rest)
                                      |j $ %{} :Leaf (:at 1629616224651) (:by |rJG4IHzWf) (:text |xs)
        |parse-by-letter $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1537552707235) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1629616194999) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1537552707235) (:by |root) (:text |parse-by-letter)
              |r $ %{} :Expr (:at 1537552707235) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1537552712460) (:by |root) (:text |text)
                  |j $ %{} :Leaf (:at 1537552717968) (:by |root) (:text |query)
              |v $ %{} :Expr (:at 1537639476417) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1537639479469) (:by |root) (:text |let)
                  |T $ %{} :Expr (:at 1537639480692) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1537639480878) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1537639485501) (:by |root) (:text |results)
                          |T $ %{} :Expr (:at 1537803760803) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1537803761717) (:by |root) (:text |conflate-chunks)
                              |T $ %{} :Expr (:at 1537638433614) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616187648) (:by |rJG4IHzWf) (:text |parse-by-letter-iter)
                                  |j $ %{} :Expr (:at 1537638440135) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537638440328) (:by |root) (:text |[])
                                  |r $ %{} :Expr (:at 1537638451103) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629616291942) (:by |rJG4IHzWf) (:text |.split)
                                      |T $ %{} :Leaf (:at 1537638445346) (:by |root) (:text |text)
                                      |j $ %{} :Leaf (:at 1629616293543) (:by |rJG4IHzWf) (:text "|\"")
                                  |v $ %{} :Expr (:at 1537638464031) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616296138) (:by |rJG4IHzWf) (:text |.split)
                                      |j $ %{} :Leaf (:at 1537638466096) (:by |root) (:text |query)
                                      |r $ %{} :Leaf (:at 1629616297223) (:by |rJG4IHzWf) (:text "|\"")
                  |j $ %{} :Expr (:at 1537639487589) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1537639490850) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1537639491176) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1537842978707) (:by |rJG4IHzWf) (:text |:matches?)
                          |j $ %{} :Expr (:at 1537639596932) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1537639598205) (:by |root) (:text |not)
                              |T $ %{} :Expr (:at 1537639510128) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616302145) (:by |rJG4IHzWf) (:text |any?)
                                  |b $ %{} :Leaf (:at 1629616305256) (:by |rJG4IHzWf) (:text |results)
                                  |j $ %{} :Expr (:at 1537639521162) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537639521472) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1537639522652) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537639522855) (:by |root) (:text |x)
                                      |r $ %{} :Expr (:at 1537639523833) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537639525779) (:by |root) (:text |=)
                                          |j $ %{} :Leaf (:at 1537639531692) (:by |root) (:text |:missed)
                                          |r $ %{} :Expr (:at 1537639535594) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537639587571) (:by |root) (:text |first)
                                              |j $ %{} :Leaf (:at 1537639589341) (:by |root) (:text |x)
                      |r $ %{} :Expr (:at 1537639493020) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1537843023518) (:by |rJG4IHzWf) (:text |:chunks)
                          |j $ %{} :Leaf (:at 1537639503941) (:by |root) (:text |results)
                      |v $ %{} :Expr (:at 1537842959220) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1537842969979) (:by |rJG4IHzWf) (:text |:text)
                          |j $ %{} :Leaf (:at 1537842966833) (:by |rJG4IHzWf) (:text |text)
        |parse-by-letter-iter $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629616188021) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1629616193013) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1629616188021) (:by |rJG4IHzWf) (:text |parse-by-letter-iter)
              |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |acc)
                  |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |xs)
                  |r $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |ys)
              |v $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |empty?)
                      |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |xs)
                  |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |empty?)
                          |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |ys)
                      |r $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |acc)
                      |v $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |conj)
                          |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |acc)
                          |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |[])
                              |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |:missed)
                              |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |apply)
                                  |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |str)
                                  |r $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |ys)
                  |v $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |empty?)
                          |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |xs)
                      |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |conj)
                          |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |acc)
                          |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |[])
                              |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |:missed)
                              |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |apply)
                                  |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |str)
                                  |r $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |ys)
                      |v $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |if)
                          |j $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |=)
                              |j $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |first)
                                  |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |xs)
                              |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |first)
                                  |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |ys)
                          |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |recur)
                              |j $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |conj)
                                  |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |acc)
                                  |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |[])
                                      |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |:hit)
                                      |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |first)
                                          |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |xs)
                              |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |rest)
                                  |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |xs)
                              |v $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |rest)
                                  |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |ys)
                          |v $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |if)
                              |j $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |=)
                                  |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text "|\" ")
                                  |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |first)
                                      |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |ys)
                              |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |recur)
                                  |j $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |conj)
                                      |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |acc)
                                      |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |[])
                                          |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |:space)
                                          |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |first)
                                              |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |xs)
                                  |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |rest)
                                      |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |xs)
                                  |v $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |rest)
                                      |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |ys)
                              |v $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |recur)
                                  |j $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |conj)
                                      |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |acc)
                                      |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |[])
                                          |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |:rest)
                                          |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |first)
                                              |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |xs)
                                  |r $ %{} :Expr (:at 1629616190138) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |rest)
                                      |j $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |xs)
                                  |v $ %{} :Leaf (:at 1629616190138) (:by |rJG4IHzWf) (:text |ys)
        |parse-by-word $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1537902546586) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1629616090396) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1537902546586) (:by |root) (:text |parse-by-word)
              |r $ %{} :Expr (:at 1537902546586) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1537902559366) (:by |root) (:text |text)
                  |j $ %{} :Leaf (:at 1537902562335) (:by |root) (:text |query)
              |v $ %{} :Expr (:at 1537903403968) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1537903404815) (:by |root) (:text |let)
                  |T $ %{} :Expr (:at 1537903406875) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1537903407092) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1537903408756) (:by |root) (:text |result)
                          |T $ %{} :Expr (:at 1537902563966) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629616074826) (:by |rJG4IHzWf) (:text |parse-by-word-iter)
                              |b $ %{} :Expr (:at 1537902663445) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1537902664186) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1537902606171) (:by |root) (:text |text)
                              |r $ %{} :Expr (:at 1537902635205) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1537902638954) (:by |root) (:text |filter)
                                  |H $ %{} :Expr (:at 1629616098265) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616100765) (:by |rJG4IHzWf) (:text |.split)
                                      |j $ %{} :Leaf (:at 1629616098265) (:by |rJG4IHzWf) (:text |query)
                                      |r $ %{} :Leaf (:at 1629616098265) (:by |rJG4IHzWf) (:text "|\" ")
                                  |L $ %{} :Expr (:at 1537902639723) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537902640475) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1537902640792) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537902641034) (:by |root) (:text |x)
                                      |r $ %{} :Expr (:at 1537902641574) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537902642146) (:by |root) (:text |not)
                                          |j $ %{} :Expr (:at 1537902642480) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629616104529) (:by |rJG4IHzWf) (:text |.blank?)
                                              |j $ %{} :Leaf (:at 1537902656656) (:by |root) (:text |x)
                  |j $ %{} :Expr (:at 1537903411908) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1537903413268) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1537903413832) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1537903419339) (:by |root) (:text |:matches?)
                          |j $ %{} :Expr (:at 1537903425930) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1537903426370) (:by |root) (:text |not)
                              |j $ %{} :Expr (:at 1537903427710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616357459) (:by |rJG4IHzWf) (:text |any?)
                                  |b $ %{} :Leaf (:at 1629616107789) (:by |rJG4IHzWf) (:text |result)
                                  |j $ %{} :Expr (:at 1537903431963) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537903432894) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1537903433515) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537903433839) (:by |root) (:text |x)
                                      |r $ %{} :Expr (:at 1537903434583) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537903434922) (:by |root) (:text |=)
                                          |j $ %{} :Leaf (:at 1537903437700) (:by |root) (:text |:missed)
                                          |r $ %{} :Expr (:at 1537903441511) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537903444051) (:by |root) (:text |first)
                                              |j $ %{} :Leaf (:at 1537903444615) (:by |root) (:text |x)
                      |r $ %{} :Expr (:at 1537903453733) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1537903459165) (:by |root) (:text |:chunks)
                          |j $ %{} :Leaf (:at 1537903460293) (:by |root) (:text |result)
                      |v $ %{} :Expr (:at 1537903461470) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1537903463211) (:by |root) (:text |:text)
                          |j $ %{} :Leaf (:at 1537903464076) (:by |root) (:text |text)
        |parse-by-word-iter $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629616075899) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1629616080128) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1629616075899) (:by |rJG4IHzWf) (:text |parse-by-word-iter)
              |r $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |acc)
                  |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |text)
                  |r $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |ys)
              |v $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |empty?)
                      |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |ys)
                  |r $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616082400) (:by |rJG4IHzWf) (:text |.blank?)
                          |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |text)
                      |r $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |acc)
                      |v $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |conj)
                          |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |acc)
                          |r $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |[])
                              |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |:rest)
                              |r $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |text)
                  |v $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |let)
                      |j $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |y0)
                              |j $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |first)
                                  |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |ys)
                          |j $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |p)
                              |j $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616484935) (:by |rJG4IHzWf) (:text |.!indexOf)
                                  |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |text)
                                  |r $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |y0)
                      |r $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |cond)
                          |j $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616338995) (:by |rJG4IHzWf) (:text |>)
                                  |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |p)
                                  |r $ %{} :Leaf (:at 1629616339617) (:by |rJG4IHzWf) (:text |0)
                              |j $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |recur)
                                  |j $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |conj)
                                      |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |acc)
                                      |r $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |[])
                                          |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |:rest)
                                          |r $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629616347694) (:by |rJG4IHzWf) (:text |.slice)
                                              |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |text)
                                              |r $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |0)
                                              |v $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |p)
                                      |v $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |[])
                                          |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |:hit)
                                          |r $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |y0)
                                  |r $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616325720) (:by |rJG4IHzWf) (:text |.slice)
                                      |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |text)
                                      |r $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |+)
                                          |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |p)
                                          |r $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |count)
                                              |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |y0)
                                  |v $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |rest)
                                      |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |ys)
                          |r $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616341905) (:by |rJG4IHzWf) (:text |=)
                                  |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |p)
                                  |r $ %{} :Leaf (:at 1629616342551) (:by |rJG4IHzWf) (:text |0)
                              |j $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |recur)
                                  |j $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |conj)
                                      |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |acc)
                                      |r $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |[])
                                          |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |:hit)
                                          |r $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |y0)
                                  |r $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616333837) (:by |rJG4IHzWf) (:text |.slice)
                                      |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |text)
                                      |r $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |count)
                                          |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |y0)
                                  |v $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |rest)
                                      |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |ys)
                          |v $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629616087511) (:by |rJG4IHzWf) (:text |true)
                              |j $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |conj)
                                  |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |acc)
                                  |r $ %{} :Expr (:at 1629616077473) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |[])
                                      |j $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |:missed)
                                      |r $ %{} :Leaf (:at 1629616077473) (:by |rJG4IHzWf) (:text |y0)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1537552675590) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1537552675590) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1537552675590) (:by |root) (:text |fuzzy-filter.core)
            |r $ %{} :Expr (:at 1537902647759) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1537902648540) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1537902648747) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1537902648982) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1537902651975) (:by |root) (:text |clojure.string)
                    |r $ %{} :Leaf (:at 1537902652905) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1537902653760) (:by |root) (:text |string)
    |fuzzy-filter.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defatom)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |*reel)
              |r $ %{} :Expr (:at nil) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507399778895) (:by |root) (:text |->)
                  |T $ %{} :Leaf (:at 1507399776350) (:by |root) (:text |reel-schema/reel)
                  |j $ %{} :Expr (:at nil) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507401405076) (:by |root) (:text |:base)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
                  |r $ %{} :Expr (:at nil) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507399793097) (:by |root) (:text |:store)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
              |t $ %{} :Expr (:at 1518156274050) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518156275745) (:by |root) (:text |;)
                  |j $ %{} :Leaf (:at 1518156276516) (:by |root) (:text |println)
                  |r $ %{} :Leaf (:at 1518156280042) (:by |root) (:text ||Dispatch:)
                  |v $ %{} :Leaf (:at 1518156280471) (:by |root) (:text |op)
              |v $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |reset!)
                  |j $ %{} :Leaf (:at 1507399899641) (:by |root) (:text |*reel)
                  |r $ %{} :Expr (:at nil) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399887573) (:by |root) (:text |reel-updater)
                      |j $ %{} :Leaf (:at 1507399888500) (:by |root) (:text |updater)
                      |r $ %{} :Leaf (:at 1507399891576) (:by |root) (:text |@*reel)
                      |v $ %{} :Leaf (:at 1507399892687) (:by |root) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
              |s $ %{} :Expr (:at 1629615945058) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629615945058) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1629615945058) (:by |rJG4IHzWf) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1629615945058) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629615945058) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Leaf (:at 1629615945058) (:by |rJG4IHzWf) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1629615945058) (:by |rJG4IHzWf) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1629615945058) (:by |rJG4IHzWf) (:text "|\"release")
              |u $ %{} :Expr (:at 1629615925125) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629615925735) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Leaf (:at 1629615927860) (:by |rJG4IHzWf) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1629615931593) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629615950641) (:by |rJG4IHzWf) (:text |load-console-formatter!)
              |x $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |y $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1507399915531) (:by |root) (:text |*reel)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616400512) (:by |rJG4IHzWf) (:text |r)
                          |j $ %{} :Leaf (:at 1629616401050) (:by |rJG4IHzWf) (:text |p)
                      |r $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |yD $ %{} :Expr (:at nil) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461739167) (:by |root) (:text |listen-devtools!)
                  |j $ %{} :Leaf (:at 1507461691211) (:by |root) (:text ||a)
                  |r $ %{} :Leaf (:at 1507461693919) (:by |root) (:text |dispatch!)
              |yL $ %{} :Expr (:at 1518157357847) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1629616403705) (:by |rJG4IHzWf) (:text |js/window.addEventListener)
                  |r $ %{} :Leaf (:at 1518157458163) (:by |root) (:text ||beforeunload)
                  |v $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yN $ %{} :Expr (:at 1533919529874) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1533919534663) (:by |rJG4IHzWf) (:text |js/setInterval)
                  |j $ %{} :Leaf (:at 1533919535136) (:by |rJG4IHzWf) (:text |persist-storage!)
                  |r $ %{} :Expr (:at 1533919541850) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1533919542412) (:by |rJG4IHzWf) (:text |*)
                      |T $ %{} :Leaf (:at 1533919540961) (:by |rJG4IHzWf) (:text |1000)
                      |j $ %{} :Leaf (:at 1533919678861) (:by |rJG4IHzWf) (:text |60)
              |yP $ %{} :Expr (:at 1518157492640) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157495438) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1518157495644) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518157495826) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157496930) (:by |root) (:text |raw)
                          |j $ %{} :Expr (:at 1518157497615) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1629616174915) (:by |rJG4IHzWf) (:text |js/localStorage.getItem)
                              |r $ %{} :Expr (:at 1518157506313) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518157507553) (:by |root) (:text |:storage)
                                  |j $ %{} :Leaf (:at 1527788293499) (:by |root) (:text |config/site)
                  |r $ %{} :Expr (:at 1518157514334) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533919640958) (:by |rJG4IHzWf) (:text |when)
                      |j $ %{} :Expr (:at 1518157515117) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157515786) (:by |root) (:text |some?)
                          |j $ %{} :Leaf (:at 1518157516878) (:by |root) (:text |raw)
                      |r $ %{} :Expr (:at 1518157521635) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157523818) (:by |root) (:text |dispatch!)
                          |r $ %{} :Expr (:at 1693979098956) (:by |rJG4IHzWf)
                            :data $ {}
                              |5 $ %{} :Leaf (:at 1693979100358) (:by |rJG4IHzWf) (:text |::)
                              |D $ %{} :Leaf (:at 1693979099508) (:by |rJG4IHzWf) (:text |:hydrate-storage)
                              |T $ %{} :Expr (:at 1518157527987) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616159514) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                                  |j $ %{} :Leaf (:at 1518157531240) (:by |root) (:text |raw)
              |yT $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text "||App started.")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |.querySelector)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |js/document)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||.app)
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1533919517365) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |r $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629616162128) (:by |rJG4IHzWf) (:text |?)
                  |j $ %{} :Leaf (:at 1629616162405) (:by |rJG4IHzWf) (:text |e)
              |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                :data $ {}
                  |j $ %{} :Leaf (:at 1629616165290) (:by |rJG4IHzWf) (:text |js/localStorage.setItem)
                  |r $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |:storage)
                      |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |config/site)
                  |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629616170875) (:by |rJG4IHzWf) (:text |format-cirru-edn)
                      |j $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |:store)
                          |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |@*reel)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629616415369) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |reload!)
              |r $ %{} :Expr (:at 1629616415369) (:by |rJG4IHzWf)
                :data $ {}
              |v $ %{} :Expr (:at 1629616415369) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Expr (:at 1629616415369) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |nil?)
                      |j $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |build-errors)
                  |r $ %{} :Expr (:at 1629616415369) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |do)
                      |j $ %{} :Expr (:at 1629616415369) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |:changes)
                      |r $ %{} :Expr (:at 1629616415369) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |clear-cache!)
                      |v $ %{} :Expr (:at 1629616415369) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |:changes)
                          |v $ %{} :Expr (:at 1629616415369) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |fn)
                              |j $ %{} :Expr (:at 1629616415369) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |reel)
                                  |j $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |prev)
                              |r $ %{} :Expr (:at 1629616415369) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |render-app!)
                      |x $ %{} :Expr (:at 1629616415369) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |reset!)
                          |j $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Expr (:at 1629616415369) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |refresh-reel)
                              |j $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |@*reel)
                              |r $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |schema/store)
                              |v $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |updater)
                      |y $ %{} :Expr (:at 1629616415369) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |hud!)
                          |j $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text "|\"ok~")
                          |r $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text "|\"Ok")
                  |v $ %{} :Expr (:at 1629616415369) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |hud!)
                      |j $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text "|\"error")
                      |r $ %{} :Leaf (:at 1629616415369) (:by |rJG4IHzWf) (:text |build-errors)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render!)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1507400119272) (:by |root) (:text |@*reel)
                  |v $ %{} :Leaf (:at 1629616382363) (:by |rJG4IHzWf) (:text |dispatch!)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at nil) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fuzzy-filter.main)
            |r $ %{} :Expr (:at nil) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |clear-cache!)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |realize-ssr!)
                |v $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fuzzy-filter.comp.container)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                |y $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1508556737455) (:by |root) (:text |fuzzy-filter.updater)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
                |yT $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fuzzy-filter.schema)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |schema)
                |yj $ %{} :Expr (:at nil) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507399674614) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1507399678694) (:by |root) (:text |reel.util)
                    |r $ %{} :Leaf (:at 1507399680625) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507399681518) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1507399682662) (:by |root) (:text |listen-devtools!)
                |yr $ %{} :Expr (:at nil) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507399684313) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1507399687162) (:by |root) (:text |reel.core)
                    |r $ %{} :Leaf (:at 1507399688098) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507399688928) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1507399691010) (:by |root) (:text |reel-updater)
                        |q $ %{} :Leaf (:at 1518156288482) (:by |root) (:text |refresh-reel)
                |yv $ %{} :Expr (:at nil) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507399715600) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1507399717674) (:by |root) (:text |reel.schema)
                    |r $ %{} :Leaf (:at 1507399755750) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507399757678) (:by |root) (:text |reel-schema)
                |yx $ %{} :Expr (:at 1518157534012) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1518157534486) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1518157537473) (:by |root) (:text |cljs.reader)
                    |r $ %{} :Leaf (:at 1518157538193) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1518157538431) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1518157538636) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1518157540981) (:by |root) (:text |read-string)
                |yy $ %{} :Expr (:at 1527788302920) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1527788303612) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527788304925) (:by |root) (:text |fuzzy-filter.config)
                    |r $ %{} :Leaf (:at 1527788306048) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788306884) (:by |root) (:text |config)
                |yyT $ %{} :Expr (:at 1629616424875) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629616424875) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1629616424875) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1629616424875) (:by |rJG4IHzWf) (:text |build-errors)
                |yyj $ %{} :Expr (:at 1629616424875) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629616424875) (:by |rJG4IHzWf) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1629616424875) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1629616424875) (:by |rJG4IHzWf) (:text |hud!)
    |fuzzy-filter.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1512359514709) (:by |rJG4IHzWf) (:text |:content)
                      |j $ %{} :Leaf (:at 1512359516026) (:by |rJG4IHzWf) (:text "|\"this and that to search")
                  |v $ %{} :Expr (:at 1537552766721) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1537552767575) (:by |root) (:text |:query)
                      |j $ %{} :Leaf (:at 1537903933568) (:by |root) (:text "|\"that search")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at nil) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fuzzy-filter.schema)
    |fuzzy-filter.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1519489491135) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1519489492110) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1693979078426) (:by |rJG4IHzWf) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |n $ %{} :Expr (:at nil) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1693979065022) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507399855618) (:by |root) (:text |:states)
                          |b $ %{} :Leaf (:at 1693979066234) (:by |rJG4IHzWf) (:text |cursor)
                          |h $ %{} :Leaf (:at 1693979066481) (:by |rJG4IHzWf) (:text |s)
                      |j $ %{} :Expr (:at nil) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507399857991) (:by |root) (:text |update-states)
                          |j $ %{} :Leaf (:at 1507399858922) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1693979068491) (:by |rJG4IHzWf) (:text |cursor)
                          |t $ %{} :Leaf (:at 1693979068738) (:by |rJG4IHzWf) (:text |s)
                  |r $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1693979079223) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1512359657160) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Leaf (:at 1693979080334) (:by |rJG4IHzWf) (:text |d)
                      |j $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1512359666053) (:by |rJG4IHzWf) (:text |assoc)
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1512359660859) (:by |rJG4IHzWf) (:text |:content)
                          |v $ %{} :Leaf (:at 1693979081901) (:by |rJG4IHzWf) (:text |d)
                  |s $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1693979082737) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1512359657160) (:by |rJG4IHzWf) (:text |:query)
                          |b $ %{} :Leaf (:at 1693979083087) (:by |rJG4IHzWf) (:text |d)
                      |j $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1512359666053) (:by |rJG4IHzWf) (:text |assoc)
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1512359660859) (:by |rJG4IHzWf) (:text |:query)
                          |v $ %{} :Leaf (:at 1693979084222) (:by |rJG4IHzWf) (:text |d)
                  |t $ %{} :Expr (:at 1518157547521) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1693979084906) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157657108) (:by |root) (:text |:hydrate-storage)
                          |b $ %{} :Leaf (:at 1693979085280) (:by |rJG4IHzWf) (:text |d)
                      |j $ %{} :Leaf (:at 1693979086140) (:by |rJG4IHzWf) (:text |d)
                  |u $ %{} :Expr (:at 1693979072627) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693979072948) (:by |rJG4IHzWf) (:text |_)
                      |b $ %{} :Expr (:at 1693979073365) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693979073365) (:by |rJG4IHzWf) (:text |do)
                          |b $ %{} :Expr (:at 1693979073365) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693979074929) (:by |rJG4IHzWf) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1693979073365) (:by |rJG4IHzWf) (:text "|\"Unknown op:")
                              |h $ %{} :Leaf (:at 1693979073365) (:by |rJG4IHzWf) (:text |op)
                          |h $ %{} :Leaf (:at 1693979073365) (:by |rJG4IHzWf) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at nil) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fuzzy-filter.updater)
            |r $ %{} :Expr (:at nil) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1507399864640) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at nil) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507399865654) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1507399873143) (:by |root) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1507399874041) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507399874938) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1507399875675) (:by |root) (:text |update-states)
    |fuzzy-filter.util $ %{} :FileEntry
      :defs $ {}
        |get-env! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1528096708635) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1528096708635) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1528096708635) (:by |root) (:text |get-env!)
              |r $ %{} :Expr (:at 1528096708635) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1528096715789) (:by |root) (:text |property)
              |v $ %{} :Expr (:at 1528096716780) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1528096718472) (:by |root) (:text |aget)
                  |j $ %{} :Expr (:at 1528096719073) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528096720231) (:by |root) (:text |.-env)
                      |j $ %{} :Leaf (:at 1528096724208) (:by |root) (:text |js/process)
                  |r $ %{} :Leaf (:at 1528096728206) (:by |root) (:text |property)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1528096705418) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1528096705418) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1528096705418) (:by |root) (:text |fuzzy-filter.util)
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
