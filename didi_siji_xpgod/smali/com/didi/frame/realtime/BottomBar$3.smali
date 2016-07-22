.class Lcom/didi/frame/realtime/BottomBar$3;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/realtime/BottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/realtime/BottomBar;


# direct methods
.method constructor <init>(Lcom/didi/frame/realtime/BottomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/didi/frame/realtime/BottomBar$3;->this$0:Lcom/didi/frame/realtime/BottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$3;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$400(Lcom/didi/frame/realtime/BottomBar;)Lx/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lx/ImageView;->setEnabled(Z)V

    .line 216
    invoke-static {}, Lcom/didi/frame/realtime/BottomBar;->access$500()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$3;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #calls: Lcom/didi/frame/realtime/BottomBar;->showInputText()V
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$600(Lcom/didi/frame/realtime/BottomBar;)V

    .line 227
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orderStyleTaxi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/realtime/BottomBar;->access$500()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 228
    return-void

    .line 220
    :cond_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isFirstClickVoice()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/TaxiPreferences;->isOpenShareTrip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$3;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #calls: Lcom/didi/frame/realtime/BottomBar;->showConfimDialog()V
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$700(Lcom/didi/frame/realtime/BottomBar;)V

    .line 222
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setFirstClickVoide(Z)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$3;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #calls: Lcom/didi/frame/realtime/BottomBar;->showVoiceText()V
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$800(Lcom/didi/frame/realtime/BottomBar;)V

    goto :goto_0
.end method
