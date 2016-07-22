.class Lcom/didi/common/util/SMSUtil$SmsReceiver;
.super Landroid/database/ContentObserver;
.source "SMSUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/util/SMSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/util/SMSUtil;


# direct methods
.method public constructor <init>(Lcom/didi/common/util/SMSUtil;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/didi/common/util/SMSUtil$SmsReceiver;->this$0:Lcom/didi/common/util/SMSUtil;

    .line 92
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 93
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 98
    const-string v0, "android.permission.READ_SMS"

    invoke-static {v0}, Lcom/didi/common/util/Utils;->checkUserPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/didi/common/util/SMSUtil$SmsReceiver;->this$0:Lcom/didi/common/util/SMSUtil;

    #calls: Lcom/didi/common/util/SMSUtil;->checkSmsState()V
    invoke-static {v0}, Lcom/didi/common/util/SMSUtil;->access$200(Lcom/didi/common/util/SMSUtil;)V

    .line 101
    :cond_0
    return-void
.end method
