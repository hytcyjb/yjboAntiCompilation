.class Lcom/didi/common/util/SMSUtil$1;
.super Ljava/lang/Object;
.source "SMSUtil.java"

# interfaces
.implements Lcom/didi/common/util/SMSUtil$SmsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/util/SMSUtil;->sendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/util/SMSUtil;


# direct methods
.method constructor <init>(Lcom/didi/common/util/SMSUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/didi/common/util/SMSUtil$1;->this$0:Lcom/didi/common/util/SMSUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmsChanged(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    .line 55
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 56
    .local v0, type:I
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 57
    const/4 p1, 0x0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMSUtil smscode type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 60
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    const v3, 0x7f0b04e7

    invoke-virtual {v2, v3}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMSUtil smscode SMS_OUTBOX_TYPE mHandler:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/util/SMSUtil$1;->this$0:Lcom/didi/common/util/SMSUtil;

    #getter for: Lcom/didi/common/util/SMSUtil;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/didi/common/util/SMSUtil;->access$000(Lcom/didi/common/util/SMSUtil;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSendMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/util/SMSUtil$1;->this$0:Lcom/didi/common/util/SMSUtil;

    #getter for: Lcom/didi/common/util/SMSUtil;->isSendMsg:Z
    invoke-static {v2}, Lcom/didi/common/util/SMSUtil;->access$100(Lcom/didi/common/util/SMSUtil;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/didi/common/util/SMSUtil$1;->this$0:Lcom/didi/common/util/SMSUtil;

    #getter for: Lcom/didi/common/util/SMSUtil;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/didi/common/util/SMSUtil;->access$000(Lcom/didi/common/util/SMSUtil;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/didi/common/util/SMSUtil$1;->this$0:Lcom/didi/common/util/SMSUtil;

    #getter for: Lcom/didi/common/util/SMSUtil;->isSendMsg:Z
    invoke-static {v1}, Lcom/didi/common/util/SMSUtil;->access$100(Lcom/didi/common/util/SMSUtil;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/didi/common/util/SMSUtil$1;->this$0:Lcom/didi/common/util/SMSUtil;

    #setter for: Lcom/didi/common/util/SMSUtil;->isSendMsg:Z
    invoke-static {v1, v4}, Lcom/didi/common/util/SMSUtil;->access$102(Lcom/didi/common/util/SMSUtil;Z)Z

    .line 67
    iget-object v1, p0, Lcom/didi/common/util/SMSUtil$1;->this$0:Lcom/didi/common/util/SMSUtil;

    #getter for: Lcom/didi/common/util/SMSUtil;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/didi/common/util/SMSUtil;->access$000(Lcom/didi/common/util/SMSUtil;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2328

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/didi/common/util/SMSUtil$1;->this$0:Lcom/didi/common/util/SMSUtil;

    invoke-virtual {v1}, Lcom/didi/common/util/SMSUtil;->unregisterSmsObserver()V

    .line 84
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/didi/common/util/SMSUtil$1;->this$0:Lcom/didi/common/util/SMSUtil;

    #getter for: Lcom/didi/common/util/SMSUtil;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/didi/common/util/SMSUtil;->access$000(Lcom/didi/common/util/SMSUtil;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, -0x2328

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 74
    iget-object v1, p0, Lcom/didi/common/util/SMSUtil$1;->this$0:Lcom/didi/common/util/SMSUtil;

    invoke-virtual {v1}, Lcom/didi/common/util/SMSUtil;->unregisterSmsObserver()V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/didi/common/util/SMSUtil$1;->this$0:Lcom/didi/common/util/SMSUtil;

    #getter for: Lcom/didi/common/util/SMSUtil;->isSendMsg:Z
    invoke-static {v1}, Lcom/didi/common/util/SMSUtil;->access$100(Lcom/didi/common/util/SMSUtil;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 79
    iget-object v1, p0, Lcom/didi/common/util/SMSUtil$1;->this$0:Lcom/didi/common/util/SMSUtil;

    #setter for: Lcom/didi/common/util/SMSUtil;->isSendMsg:Z
    invoke-static {v1, v4}, Lcom/didi/common/util/SMSUtil;->access$102(Lcom/didi/common/util/SMSUtil;Z)Z

    .line 80
    iget-object v1, p0, Lcom/didi/common/util/SMSUtil$1;->this$0:Lcom/didi/common/util/SMSUtil;

    #getter for: Lcom/didi/common/util/SMSUtil;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/didi/common/util/SMSUtil;->access$000(Lcom/didi/common/util/SMSUtil;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2329

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 82
    :cond_3
    iget-object v1, p0, Lcom/didi/common/util/SMSUtil$1;->this$0:Lcom/didi/common/util/SMSUtil;

    invoke-virtual {v1}, Lcom/didi/common/util/SMSUtil;->unregisterSmsObserver()V

    goto :goto_0
.end method
