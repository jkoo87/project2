module ApplicationHelper

      def show_star(number)
          case
          when number <= 1 && number < 1.5
            '<span class="star on"></span>
            <span class="star"></span>
            <span class="star"></span>
            <span class="star"></span>
            <span class="star"></span>'.html_safe
          when number <= 1.5 && number < 2
            '<span class="star on"></span>
            <span class="star half"></span>
            <span class="star"></span>
            <span class="star"></span>
            <span class="star"></span>'.html_safe
          when number <= 2 && number < 2.5
            '<span class="star on"></span>
            <span class="star on"></span>
            <span class="star"></span>
            <span class="star"></span>
            <span class="star"></span>'.html_safe
          when number <= 2.5 && number < 3
            '<span class="star on"></span>
            <span class="star on"></span>
            <span class="star half"></span>
            <span class="star"></span>
            <span class="star"></span>'.html_safe
          when number <= 3 && number < 3.5
            '<span class="star on"></span>
            <span class="star on"></span>
            <span class="star on"></span>
            <span class="star"></span>
            <span class="star"></span>'.html_safe
          when number <= 3.5 && number < 4
            '<span class="star on"></span>
            <span class="star on"></span>
            <span class="star on"></span>
            <span class="star half"></span>
            <span class="star"></span>'.html_safe
          when number <= 4 && number < 4.5
            '<span class="star on"></span>
            <span class="star on"></span>
            <span class="star on"></span>
            <span class="star on"></span>
            <span class="star"></span>'.html_safe
          when number <= 4.5 && number < 5
            '<span class="star on"></span>
            <span class="star on"></span>
            <span class="star on"></span>
            <span class="star on"></span>
            <span class="star half"></span>'.html_safe
          when number == 5
            '<span class="star on"></span>
            <span class="star on"></span>
            <span class="star on"></span>
            <span class="star on"></span>
            <span class="star on"></span>'.html_safe
          end
      end



      def show_level(number)
          case
          when number == 1
            '<span>Beginner</span>'.html_safe
          when number == 2
            'Easy'.html_safe
          when number == 3
            '<span>Moderate</span>'.html_safe
          when number == 4
            '<span>Hard</span>'.html_safe
          when number == 5
            '<span>Challenging</span>'.html_safe
          end
      end

end
