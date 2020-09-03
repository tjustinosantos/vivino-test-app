# frozen_string_literal: true

# Search class as part of page objects approach
class Search < Appom::Page
  element :searchBox, :id, 'vivino.web.app.beta:id/search_vivino'
  element :searchInput, :id, 'vivino.web.app.beta:id/editText_input'
  section :popularSearchList, :id, 'vivino.web.app.beta:id/listviewWineListActivity' do
    elements :popularItens, :xpath, '//android.widget.RelativeLayout'
  end

  section :filterTabs, :id, 'vivino.web.app.beta:id/filter_tabs' do
    element :typeTab, :id, 'vivino.web.app.beta:id/tab_type'
  end

  section :categoriesList, :id, 'vivino.web.app.beta:id/recycler_view' do
    sections  :categoriesItens, :xpath, '//android.widget.RelativeLayout' do
      element :categoryText, :id, 'vivino.web.app.beta:id/text_view'
    end
  end

  section :popularSearchPlace, :id, 'vivino.web.app.beta:id/recycler_view' do
    elements :popularSearchPlaceItem, :xpath, '//android.widget.RelativeLayout'
  end

  # I struggled to avoid xpath for this one specifically
  element :firstWine, :xpath, '/hierarchy/android.widget.FrameLayout' \
'/android.widget.LinearLayout/android.widget.FrameLayout/' \
'/android.widget.LinearLayout/android.widget.FrameLayout'\
'/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/' \
'androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout' \
'/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]' \
'/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout'
end
