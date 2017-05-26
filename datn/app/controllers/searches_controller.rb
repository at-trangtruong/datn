class SearchesController < ApplicationController

  def index
    district = params[:district]
    type = params[:type]
    regions = params[:regions]
    size = params[:size]
    meals = params[:meals]
    sql = " PREFIX amthuc: <http://www.semanticweb.org/amthuc#>
    SELECT ?id
    WHERE {
      ?x amthuc:id ?id.
    "
    sql += "?x amthuc:thuoc_Quan amthuc:#{district}.\n" if !district.blank?
    sql += "?x amthuc:co_Hinh_Thuc amthuc:#{type}.\n" if !type.blank?
    sql += "?x amthuc:la_Am_Thuc amthuc:#{regions}.\n" if !regions.blank?
    sql += "?x amthuc:co_Quy_Mo amthuc:#{size}.\n" if !size.blank?
    sql += "?x amthuc:thuoc_Bua amthuc:#{meals}.\n" if !meals.blank?
    sql += "}"
    query = Tripod::SparqlClient::Query.query(sql,nil)
    results = (JSON.parse query)["results"]["bindings"]
    ids = results.map{ |result|
      result["id"]["value"]
    }
    @restaurants = (Restaurant.where id: ids).paginate page: params[:page], per_page: 5
  end
end
