.class final Lcom/didi/im/helper/IMPushHelper$2;
.super Ljava/lang/Object;
.source "IMPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/helper/IMPushHelper;->registerFetchedMesssageListener(Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;


# direct methods
.method constructor <init>(Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/didi/im/helper/IMPushHelper$2;->val$l:Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushMessageReceived(II[B)V
    .locals 1
    .parameter "productId"
    .parameter "msgType"
    .parameter "data"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/didi/im/helper/IMPushHelper$2;->val$l:Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;

    #calls: Lcom/didi/im/helper/IMPushHelper;->onFetchedMessageReceived(Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;[B)V
    invoke-static {v0, p3}, Lcom/didi/im/helper/IMPushHelper;->access$100(Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;[B)V

    .line 254
    return-void
.end method
