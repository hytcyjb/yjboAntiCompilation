.class Lcom/didi/beatles/im/BtsConversationActivity$11;
.super Ljava/lang/Object;
.source "BtsConversationActivity.java"

# interfaces
.implements Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/im/BtsConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/im/BtsConversationActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/im/BtsConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationActivity$11;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIMUnreadReceived(J)V
    .locals 8
    .parameter "maxMid"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$11;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$1200(Lcom/didi/beatles/im/BtsConversationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/utils/BtsParseUtil;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationActivity$11;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/beatles/im/BtsConversationActivity;->access$1200(Lcom/didi/beatles/im/BtsConversationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/im/db/IMDBDataHelper;->getMaxMidBySID(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    const/16 v6, 0x14

    new-instance v7, Lcom/didi/beatles/im/BtsConversationActivity$11$1;

    invoke-direct {v7, p0}, Lcom/didi/beatles/im/BtsConversationActivity$11$1;-><init>(Lcom/didi/beatles/im/BtsConversationActivity$11;)V

    invoke-static/range {v0 .. v7}, Lcom/didi/im/helper/IMPushHelper;->fetchMessage(JJJILcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 667
    return-void
.end method
