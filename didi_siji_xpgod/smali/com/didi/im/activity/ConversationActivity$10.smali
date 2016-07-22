.class Lcom/didi/im/activity/ConversationActivity$10;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/im/activity/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/im/activity/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/didi/im/activity/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/didi/im/activity/ConversationActivity$10;->this$0:Lcom/didi/im/activity/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIMUnreadReceived(J)V
    .locals 8
    .parameter "maxMid"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$10;->this$0:Lcom/didi/im/activity/ConversationActivity;

    iget-object v0, v0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/didi/im/activity/ConversationActivity$10;->this$0:Lcom/didi/im/activity/ConversationActivity;

    iget-object v2, v2, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/im/db/IMDBDataHelper;->getMaxMidBySID(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    const/16 v6, 0x14

    new-instance v7, Lcom/didi/im/activity/ConversationActivity$10$1;

    invoke-direct {v7, p0}, Lcom/didi/im/activity/ConversationActivity$10$1;-><init>(Lcom/didi/im/activity/ConversationActivity$10;)V

    invoke-static/range {v0 .. v7}, Lcom/didi/im/helper/IMPushHelper;->fetchMessage(JJJILcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 620
    return-void
.end method
