# encoding: utf-8

class String
  def and(a)
    #"( #{self} && #{a} )"
    "( #{self} #{a} )"
  end

  def or(a)
    "( #{self} | #{a} )"
  end
end


module SearchHelper
  def get_cms
    # 大于号>也好转义
    return [
      ['OA(a8/seeyon/ufida)', '2014-07-01', 'http://yongyougd.com/productsview88.html', 'body="/seeyon/USER-DATA/IMAGES/LOGIN/login.gif"'],
      ['yongyoufe', '2014-07-01', 'http://yongyougd.com/productsview88.html', 'title="FE协作" || (body="V_show" && body="V_hedden")'],
      ['Zen Cart', '2013-12-18', 'http://www.zen-cart.com/', 'body="shopping cart program by Zen Cart" || header="Set-Cookie: zenid="'],
      ['iWebShop', '2013-12-18', 'http://www.jooyea.cn/', '(body="Powered by" && body="iWebShop") || header="iweb_safecode"'],
      ['DouPHP', '2013-12-18', 'http://www.douco.com/', 'body="Powered by DouPHP" || (body="controlBase" && body="indexLeft" && body="recommendProduct")'],
      ['twcms', '2013-12-18', 'http://www.twcms.cn/', 'body="/twcms/theme/" && body="/css/global.css"'],
      ['Cicro', '2013-12-03', 'http://www.cicro.com/', '(body="Cicro" && body="CWS") || body="content=\"Cicro" || body="index.files/cicro_userdefine.css" || (body="structure/index" && body="window.location.href=")'],
      ['SiteServer', '2013-11-29', 'http://www.siteserver.cn/', '(body="Powered by" && body="http://www.siteserver.cn" && body="SiteServer CMS") || title="Powered by SiteServer CMS" || body="T_系统首页模板" || (body="siteserver" && body="sitefiles")'],
      ['Joomla', '2013-11-28', 'http://www.Joomla.org', 'body="content=\"Joomla" || body="vbulletin-core.js" || (body="/media/system/js/core.js" && body="/media/system/js/mootools-core.js")'],
      ['vBulletin', '2013-11-28', 'http://www.vbulletin.com', 'body="content=\"vBulletin" || body="vbulletin-core.js" || body="Powered by vBulletin&trade;"'],
      ['phpbb', '2013-11-28', 'http://www.phpbb.com/','header="Set-Cookie: phpbb3_" || header="HttpOnly, phpbb3_" || (body="&copy;" && body="http://www.longluntan.com/zh/phpbb/" && body="phpBB") || body="phpBB Group\" /\>" || body="START QUICK HACK - phpBB Statistics MOD"'],
      ['HDWiki', '2013-11-26', 'http://kaiyuan.hudong.com/','title="powered by hdwiki!" || body="content=\"HDWiki" || body="http://kaiyuan.hudong.com?hf=hdwiki_copyright_kaiyuan" || header="hd_sid="'],
      ['kesionCMS', '2013-11-25', 'http://www.kesion.com/','body="/ks_inc/common.js" || body="publish by KesionCMS"'],
      ['CMSTop', '2013-11-23', 'http://www.cmstop.com/','body="/css/cmstop-common.css" || body="/js/cmstop-common.js" || body="cmstop-list-text.css" || body="<a class=\"poweredby\" href=\"http://www.cmstop.com\""'],
      ['ESPCMS', '2013-11-23', 'http://www.ecisp.cn/','title="Powered by ESPCMS" || body="Powered by ESPCMS" || (body="infolist_fff" && body="/templates/default/style/tempates_div.css")'],
      ['74cms', '2013-11-23', 'http://www.74cms.com/','(body="content=\"74cms.com" || body="content=\"骑士CMS" || body="Powered by <a href=\"http://www.74cms.com/\"" || (body="/templates/default/css/common.css" && body="selectjobscategory"))'],
      ['Foosun', '2013-11-21', 'http://www.foosun.net/','(body="Created by DotNetCMS" || body="For Foosun")'],
      ['PhpCMS', '2013-11-21', 'http://www.phpcms.com/','(body="Powered by" && body="http://www.phpcms.cn") || body="content=\"Phpcms" || body="Powered by Phpcms"'],
      ['Hanweb', '2013-11-21', 'http://www.hanweb.com/','body="Produced By 大汉网络" || body="<a href=\'http://www.hanweb.com\' style=\'display:none\'>" || body="<meta name=\'Generator\' content=\'大汉版通\'>" || body="<meta name=\'Author\' content=\'大汉网络\'>" || body="/jcms_files/jcms"'],
      ['Drupal', '2013-11-21', 'http://www.drupal.org/','header="X-Generator: Drupal" || body="content=\"Drupal" || body="jQuery.extend(Drupal.settings" || (body="/sites/default/files/" && body="/sites/all/modules/" && body="/sites/all/themes/")'],
      ['phpwind', '2013-11-19', 'http://www.phpwind.net/','title="Powered by phpwind" || body="content=\"phpwind"'],
      ['discuz', '2013-11-19', 'http://www.discuz.net/','title="Powered by Discuz" || body="content=\"Discuz" || (body="discuz_uid" && body="portal.php?mod=view")'],
      ['vBulletin', '2013-11-19', 'http://www.vBulletin.com/','title="Powered by vBulletin" || body="content=\"vBulletin" || (header=bbsessionhash && header=bblastvisit)'],
      ['cmseasy', '2013-11-19', 'http://www.cmseasy.cn/','title="Powered by CmsEasy" || header="http://www.cmseasy.cn/service_1.html" || body="content=\"CmsEasy"'],
      ['wordpress', '2013-11-19', 'http://www.wordpress.com/','( body="content=\"WordPress" || (header="X-Pingback" && header="/xmlrpc.php" && body="/wp-includes/" ) )'],
      ['DedeCMS', '2013-11-19', 'http://www.dedecms.com/','(body="Power by DedeCms" || (body="Powered by" && body="http://www.dedecms.com/" && body="DedeCMS") || body="/templets/default/style/dedecms.css")'],
      ['ECShop', '2013-11-19', 'http://www.ecshop.com/','title="Powered by ECShop" || header="ECS_ID" || body="content=\"ECSHOP" || body="/api/cron.php"'],
      ['ASPCMS', '2013-11-19', 'http://www.aspcms.com/','title="Powered by ASPCMS" || body="content=\"ASPCMS" || body="/inc/AspCms_AdvJs.asp"'],
      ['MetInfo', '2013-11-19', 'http://www.metinfo.com/','title="Powered by MetInfo" || body="content=\"MetInfo" || body="powered_by_metinfo" || body="/images/css/metinfo.css"'],
      ['PageAdmin', '2013-11-19', 'http://www.pageadmin.net/','title="Powered by PageAdmin" || body="content=\"PageAdmin" || body="Powered by <a href=\'http://www.pageadmin.net\'"'],
    ]
  end

  def get_frameworks
    return [
      ['django', '2013-11-28', 'http://www.djangoproject.com/', 'header="django"'],
      ['rails', '2013-11-28', 'http://www.rubyonrails.org/', 'header="Phusion" || header="Webrick" || header="rails"'],
      ['struts', '2013-11-28', 'http://struts.apache.org/', '(header="Apache-Coyote" || header="JSESSIONID") && (body=".do\"" || body=".action\"")'],
    ]
  end
  
  def get_cloudsec
    return [
      ['Cloudflare', '2013-11-25', 'http://www.cloudflare.com/', 'header="cloudflare-nginx"'],
      ['Incapsula', '2013-11-25', 'http://www.Incapsula.com/', 'header="X-Cdn: Incapsula"'],
      ['baidu_jiasule', '2013-11-25', 'http://jiasule.baidu.com', 'header!="server: " && header="X-Cache:" && header="Connection: keep-alive"'],
      ['360_wangzhanweishi', '2013-11-25', 'http://wangzhan.360.cn/', 'header="360wzb"'],
      ['anquanbao', '2013-11-25', 'http://www.anquanbao.com/', 'header="X-Powered-By-Anquanbao"'],
    ]
  end

  def get_cdn
    return [
      ['蓝讯', '2013-11-25', 'http://www.chinacache.com/', 'header="Powered-By-ChinaCache"'],
      ['网宿', '2013-11-25', 'http://www.chinanetcenter.com/', 'header="Cdn Cache Server" || header="WS CDN Server"'],
      ['帝联', '2013-11-25', 'http://www.dnion.com/', 'header="Server: DNION" || header="fastcdn.com"'],
      ['快网', '2013-11-25', 'http://www.fastweb.com.cn/', 'header="Fw-Via: "'],
      ['72cdn?', '2013-11-25', 'http://www.72cdn.com/', 'header=".72cdn.com"'],
      ['Webluker', '2013-11-25', 'http://www.webluker.com/', 'header="Webluker-Edge"'],
      ['西部数码', '2013-11-29', 'http://www.west263.com/', 'header="WT263CDN"'],
    ]
  end

  def get_base_librarys
    return [
      ['google-analytics', '2013-11-26', 'http://www.google.com/analytics', 'body="google-analytics.com/ga.js"'],
      ['cnzz', '2013-11-26', 'http://www.cnzz.com', 'body="cnzz.com/stat.php?id="'],
      ['jQuery', '2013-11-24', 'http://jquery.com/', 'body="jquery"'],
      ['bootstrap', '2013-11-24', 'http://getbootstrap.com/', 'body="bootstrap.css" || body="bootstrap.min.css"'],
    ]
  end


  require 'parslet'

  class QueryParser < Parslet::Parser  
    rule(:space) { match('\s').repeat(1) }
    rule(:space?) { space.maybe }
    rule(:left_parenthesis) { str('(') }
    rule(:right_parenthesis) { str(')') }

    # Comparisons
    rule(:eq) { str('=') }
    rule(:not_eq) { str('!=') }
    rule(:matches) { str('~=') }
    rule(:lt) { str('<') }
    rule(:lteq) { str('<=') }
    rule(:gt) { str('>') }
    rule(:gteq) { str('>=') }

    # Operators
    rule(:and_operator) { str('&&') }
    rule(:or_operator) { str('||') }

    # Operand
    rule(:null) { str("null").as(:nil) }
    rule(:boolean) { str("true").as(:boolean) | str("false").as(:boolean) }
    rule(:number) { match('[-+]?([0-9]*\.)?[0-9]').repeat(1).as(:number) }
    rule(:double_quote_string) do
      str('"') >>
      (
        (str('\\') >> any) |
        (str('"').absent? >> any)
      ).repeat.as(:string) >>
      str('"')
    end
    rule(:literal) { match('[a-zA-Z0-9\-_]').repeat(1) }
    rule(:identifier) { null | boolean | number | double_quote_string | literal.as(:string) }

    # Grammar
    rule(:compare_eq) { (literal.as(:left) >> space? >> eq >> space? >> identifier.as(:right)).as(:eq) }
    rule(:compare_not_eq) { (literal.as(:left) >> space? >> not_eq >> space? >> identifier.as(:right)).as(:not_eq) }
    rule(:compare_matches) { (literal.as(:left) >> space? >> matches >> space? >> identifier.as(:right)).as(:matches) }
    rule(:compare_lt) { (literal.as(:left) >> space? >> lt >> space? >> identifier.as(:right)).as(:lt) }
    rule(:compare_lteq) { (literal.as(:left) >> space? >> lteq >> space? >> identifier.as(:right)).as(:lteq) }
    rule(:compare_gt) { (literal.as(:left) >> space? >> gt >> space? >> identifier.as(:right)).as(:gt) }
    rule(:compare_gteq) { (literal.as(:left) >> space? >> gteq >> space? >> identifier.as(:right)).as(:gteq) }

    rule(:compare) { compare_eq | compare_not_eq | compare_matches | compare_lteq | compare_lt | compare_gteq | compare_gt }

    rule(:primary) { left_parenthesis >> space? >> or_operation >> space? >> right_parenthesis | compare }
    rule(:and_operation) { (primary.as(:left) >> space? >> and_operator >> space? >> and_operation.as(:right)).as(:and) | primary }
    rule(:or_operation) { (and_operation.as(:left) >> space? >> or_operator >> space? >> or_operation.as(:right)).as(:or) | and_operation }

    root :or_operation
  end

  class SphinxProcessor
    def self.parse(query)
      instance = self.new()
      instance.parse(query)
    end

    def parse(query)
      begin
        ast = QueryParser.new.parse(query)
        process(ast)
      rescue Parslet::ParseFailed => error
        raise Parslet::ParseFailed, error
        #pp "ParseError" + error.inspect
      end
    end

    def process(ast)
      operation = ast.keys.first
      self.send("process_#{operation}".to_sym, ast[operation]) if self.respond_to?("process_#{operation}".to_sym, true)
    end

    protected

    def check_column!(value)
      indexed = %w|title header body host|
      unless indexed.include?(value)
        source = Parslet::Source.new(value.to_s)
        cause = Parslet::Cause.new('Column not found', source, value.offset, [])
        raise Parslet::ParseFailed.new('Column not found', cause)
      end
    end
    def process_and(ast)
      process(ast[:left]).and(process(ast[:right]))
    end

    def process_or(ast)
      process(ast[:left]).or(process(ast[:right]))
    end

    def process_eq(ast)
      check_column!(ast[:left])
      "@#{ast[:left]} \"#{Riddle::Query.escape(parse_value(ast[:right]))}\""
      #table[ast[:left].to_sym].eq(parse_value(ast[:right]))
    end

    def process_not_eq(ast)
      check_column!(ast[:left])
      "@#{ast[:left]} -\"#{Riddle::Query.escape(parse_value(ast[:right]))}\""
      #table[ast[:left].to_sym].not_eq(parse_value(ast[:right]))
    end

    def process_matches(ast)
      check_column!(ast[:left])
      table[ast[:left].to_sym].matches(parse_value(ast[:right]))
    end

    def process_lt(ast)
      check_column!(ast[:left])
      table[ast[:left].to_sym].lt(parse_value(ast[:right]))
    end

    def process_lteq(ast)
      check_column!(ast[:left])
      table[ast[:left].to_sym].lteq(parse_value(ast[:right]))
    end

    def process_gt(ast)
      check_column!(ast[:left])
      table[ast[:left].to_sym].gt(parse_value(ast[:right]))
    end

    def process_gteq(ast)
      check_column!(ast[:left])
      table[ast[:left].to_sym].gteq(parse_value(ast[:right]))
    end

    def parse_value(value)
      type = value.keys.first
      case type
      when :nil
        return nil
      when :boolean
        return value[:boolean] == "true"
      else
        return value[type].to_s
      end
    end
  end


end