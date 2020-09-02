# frozen_string_literal: true

class Search < Appom::Page
  element :searchBox, 'id', 'vivino.web.app.beta:id/search_vivino'
  element :searchInput, 'id', 'vivino.web.app.beta:id/editText_input'
  section :popularSearchList, 'id', 'vivino.web.app.beta:id/listviewWineListActivity' do
    elements :popularItens, :xpath, '//android.widget.RelativeLayout'
  end

  section :filterTabs, :id, 'vivino.web.app.beta:id/filter_tabs' do
    element :typeTab, 'id', 'vivino.web.app.beta:id/tab_type'
  end

  section :categoriesList, :id, 'vivino.web.app.beta:id/recycler_view' do
    elements :categoriesItens, :xpath, '//android.widget.RelativeLayout'
  end

  section :popularSearchPlace, :id, 'vivino.web.app.beta:id/recycler_view' do
    elements :popularSearchPlaceItem, :xpath, '//android.widget.RelativeLayout'
  end

  element :firstWine, :xpath, '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/' \
                              'android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/' \
                              'androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout' \
                               '/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]' \
                              '/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout'

  def validate_popular_places
    popularSearchPlace.popularSearchPlaceItem.each do |place|
      expect(place.Displayed).to eq('true')
    end
  end
end
