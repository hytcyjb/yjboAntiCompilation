.class Lcom/didi/beatles/im/BtsConversationActivity$5;
.super Lcom/didi/common/net/ResponseListener;
.source "BtsConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/im/BtsConversationActivity;->getCommonSentence()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/im/model/IMCommons;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/im/BtsConversationActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/im/BtsConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationActivity$5;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 338
    check-cast p1, Lcom/didi/im/model/IMCommons;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/im/BtsConversationActivity$5;->onFinish(Lcom/didi/im/model/IMCommons;)V

    return-void
.end method

.method public onFinish(Lcom/didi/im/model/IMCommons;)V
    .locals 2
    .parameter "imCommons"

    .prologue
    .line 341
    invoke-virtual {p1}, Lcom/didi/im/model/IMCommons;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 342
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/im/model/IMCommons;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setCommonVresion(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$5;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #setter for: Lcom/didi/beatles/im/BtsConversationActivity;->btsImCommons:Lcom/didi/im/model/IMCommons;
    invoke-static {v0, p1}, Lcom/didi/beatles/im/BtsConversationActivity;->access$902(Lcom/didi/beatles/im/BtsConversationActivity;Lcom/didi/im/model/IMCommons;)Lcom/didi/im/model/IMCommons;

    .line 345
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 346
    return-void
.end method
