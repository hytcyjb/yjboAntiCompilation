.class Lcom/didi/common/ui/fragment/MenuFragment$18;
.super Lcom/didi/common/net/ResponseListener;
.source "MenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/MenuFragment;->getGameConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/CommonGame;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/MenuFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 870
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$18;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method

.method private saveGame(Lcom/didi/common/model/CommonGame;)V
    .locals 7
    .parameter "game"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 892
    if-nez p1, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getGameVersion()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/didi/common/model/CommonGame;->gameVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 899
    const-string v5, "-------game saved---"

    invoke-static {v5}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 900
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    iget-object v6, p1, Lcom/didi/common/model/CommonGame;->gameVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/didi/common/config/Preferences;->setGameVersion(Ljava/lang/String;)V

    .line 901
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    iget-object v6, p1, Lcom/didi/common/model/CommonGame;->gameTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/didi/common/config/Preferences;->setGameTitle(Ljava/lang/String;)V

    .line 902
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    iget-object v6, p1, Lcom/didi/common/model/CommonGame;->gameh5_url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/didi/common/config/Preferences;->setGameH5Url(Ljava/lang/String;)V

    .line 903
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    iget-object v6, p1, Lcom/didi/common/model/CommonGame;->gameIconurl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/didi/common/config/Preferences;->setGameIcon(Ljava/lang/String;)V

    .line 904
    iget v5, p1, Lcom/didi/common/model/CommonGame;->gameMenuShow:I

    if-ne v5, v3, :cond_4

    iget-object v5, p1, Lcom/didi/common/model/CommonGame;->gameh5_url:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v3

    .line 905
    .local v2, isMenuGameShow:Z
    :goto_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/didi/common/config/Preferences;->setMenuGameShow(Z)V

    .line 906
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/didi/common/config/Preferences;->setMenuGameInfoShow(Z)V

    .line 907
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    iget v6, p1, Lcom/didi/common/model/CommonGame;->gameShowType:I

    invoke-virtual {v5, v6}, Lcom/didi/common/config/Preferences;->setMenuGameShowType(I)V

    .line 908
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    iget-object v6, p1, Lcom/didi/common/model/CommonGame;->gameFootBarShowTips:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/didi/common/config/Preferences;->setGameFootBarShowTips(Ljava/lang/String;)V

    .line 910
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    iget-object v6, p1, Lcom/didi/common/model/CommonGame;->gameMenuText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/didi/common/config/Preferences;->setGameMenuText(Ljava/lang/String;)V

    .line 911
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    iget-boolean v6, p1, Lcom/didi/common/model/CommonGame;->isGame:Z

    invoke-virtual {v5, v6}, Lcom/didi/common/config/Preferences;->setMenuShowGame(Z)V

    .line 912
    if-eqz v2, :cond_3

    .line 913
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-------game saved---isMenuGameShow"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 914
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getGameID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 915
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/didi/common/config/Preferences;->setMenuGameRedPoint(Z)V

    .line 922
    :cond_2
    :goto_2
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    iget-object v6, p1, Lcom/didi/common/model/CommonGame;->gameId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/didi/common/config/Preferences;->setGameID(Ljava/lang/String;)V

    .line 923
    iget v5, p1, Lcom/didi/common/model/CommonGame;->gameShow4FootBar:I

    if-ne v5, v3, :cond_7

    move v0, v3

    .line 924
    .local v0, isGameShow4FootBar:Z
    :goto_3
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/didi/common/config/Preferences;->setGameShow4FootBar(Z)V

    .line 927
    .end local v0           #isGameShow4FootBar:Z
    :cond_3
    iget-object v3, p0, Lcom/didi/common/ui/fragment/MenuFragment$18;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->setGameLayout()V
    invoke-static {v3}, Lcom/didi/common/ui/fragment/MenuFragment;->access$1500(Lcom/didi/common/ui/fragment/MenuFragment;)V

    goto/16 :goto_0

    .end local v2           #isMenuGameShow:Z
    :cond_4
    move v2, v4

    .line 904
    goto :goto_1

    .line 917
    .restart local v2       #isMenuGameShow:Z
    :cond_5
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getGameID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/didi/common/model/CommonGame;->gameId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    move v1, v3

    .line 918
    .local v1, isMenuGameRedpoint:Z
    :goto_4
    if-eqz v1, :cond_2

    .line 919
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/didi/common/config/Preferences;->setMenuGameRedPoint(Z)V

    goto :goto_2

    .end local v1           #isMenuGameRedpoint:Z
    :cond_6
    move v1, v4

    .line 917
    goto :goto_4

    :cond_7
    move v0, v4

    .line 923
    goto :goto_3
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 870
    check-cast p1, Lcom/didi/common/model/CommonGame;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/MenuFragment$18;->onError(Lcom/didi/common/model/CommonGame;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/CommonGame;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 880
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 881
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$18;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->reloadGameConfing()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$1400(Lcom/didi/common/ui/fragment/MenuFragment;)V

    .line 882
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 870
    check-cast p1, Lcom/didi/common/model/CommonGame;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/MenuFragment$18;->onFail(Lcom/didi/common/model/CommonGame;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/CommonGame;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 886
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 887
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$18;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->reloadGameConfing()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$1400(Lcom/didi/common/ui/fragment/MenuFragment;)V

    .line 888
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 870
    check-cast p1, Lcom/didi/common/model/CommonGame;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/MenuFragment$18;->onSuccess(Lcom/didi/common/model/CommonGame;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/CommonGame;)V
    .locals 2
    .parameter "game"

    .prologue
    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------getgameconfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/CommonGame;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------game config:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/CommonGame;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 875
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/MenuFragment$18;->saveGame(Lcom/didi/common/model/CommonGame;)V

    .line 876
    return-void
.end method
