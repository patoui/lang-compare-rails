class Comparison < ApplicationRecord
    def getMatches
        matches = []

        if self.lang == 'php' && self.method == 'array_search' then
            matches = ['indexOf', 'findIndex', 'includes']
        elsif self.lang == 'php' && self.method == 'array_push' then
            matches = ['push']
        elsif self.lang == 'php' && self.method == 'array_map' then
            matches = ['map']
        elsif self.lang == 'php' && self.method == 'array_reduce' then
            matches = ['reduce']
        elsif self.lang == 'php' && self.method == 'is_array' then
            matches = ['isArray']
        elsif self.lang == 'php' && self.method == 'count' then
            matches = ['length']
        elsif self.lang == 'php' && self.method == 'sort' then
            matches = ['sort']
        elsif self.lang == 'php' && self.method == 'array_slice' then
            matches = ['slice']
        elsif self.lang == 'php' && self.method == 'array_reverse' then
            matches = ['reverse']
        elsif self.lang == 'php' && self.method == 'implode' then
            matches = ['join']
        elsif self.lang == 'php' && self.method == 'array_filter' then
            matches = ['filter']
        elsif self.lang == 'php' && (self.method == 'array_merge' || self.method == 'array_merge_recursive') then
            matches = ['concat']
        elsif self.lang == 'php' && self.method == 'array_walk' then
            matches = ['every']
        elsif self.lang == 'php' && self.method == 'array_fill' then
            matches = ['fill']
        elsif self.lang == 'php' && self.method == 'array_walk' then
            matches = ['forEach']
        elsif self.lang == 'php' && self.method == 'array_keys' then
            matches = ['keys']
        elsif self.lang == 'php' && self.method == 'array_pop' then
            matches = ['pop']
        elsif self.lang == 'php' && self.method == 'array_shift' then
            matches = ['shift']
        elsif self.lang == 'php' && self.method == 'array_unshift' then
            matches = ['unshift']
        elsif self.lang == 'php' && self.method == 'array_values' then
            matches = ['values']
        end

        return Comparison.select('id, lang, method, url').where([
            "lang <> ? and (lang = 'javascript' and method in (?))",
            self.lang,
            matches
        ])
    end
end
