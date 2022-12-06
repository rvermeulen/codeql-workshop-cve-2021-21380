import org.xwiki.component.annotation.Component;
import org.xwiki.script.service.ScriptService;

@Component
class Test implements ScriptService {
  public void doStuff(String untrustedInput) { return; }

  public String getStuff(int untrustedInput) { return ""; }

  private String getStuff(String trustedInput) { return ""; }
}