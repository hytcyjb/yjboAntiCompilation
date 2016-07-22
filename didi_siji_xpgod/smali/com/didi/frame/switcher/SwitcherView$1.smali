.class Lcom/didi/frame/switcher/SwitcherView$1;
.super Ljava/lang/Object;
.source "SwitcherView.java"

# interfaces
.implements Lcom/didi/common/helper/LocationHelper$CityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/switcher/SwitcherView;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/switcher/SwitcherView;


# direct methods
.method constructor <init>(Lcom/didi/frame/switcher/SwitcherView;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/didi/frame/switcher/SwitcherView$1;->this$0:Lcom/didi/frame/switcher/SwitcherView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "sourceCityId"
    .parameter "targetCityId"

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView$1;->this$0:Lcom/didi/frame/switcher/SwitcherView;

    #getter for: Lcom/didi/frame/switcher/SwitcherView;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;
    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherView;->access$000(Lcom/didi/frame/switcher/SwitcherView;)Lcom/didi/frame/switcher/SwitcherAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/didi/frame/switcher/SwitcherAdapter;->switchToCity(Ljava/lang/String;)V

    .line 160
    new-instance v0, Lcom/didi/frame/switcher/SwitcherView$1$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/switcher/SwitcherView$1$1;-><init>(Lcom/didi/frame/switcher/SwitcherView$1;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method
