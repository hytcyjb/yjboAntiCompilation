.class final Lcom/didi/im/helper/IMPushHelper$1;
.super Ljava/lang/Object;
.source "IMPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/helper/IMPushHelper;->registerAudioResponseMessageListener(Lcom/didi/im/helper/IMPushHelper$AudioResponseMessageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/im/helper/IMPushHelper$AudioResponseMessageListener;


# direct methods
.method constructor <init>(Lcom/didi/im/helper/IMPushHelper$AudioResponseMessageListener;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/didi/im/helper/IMPushHelper$1;->val$l:Lcom/didi/im/helper/IMPushHelper$AudioResponseMessageListener;

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
    .line 167
    iget-object v0, p0, Lcom/didi/im/helper/IMPushHelper$1;->val$l:Lcom/didi/im/helper/IMPushHelper$AudioResponseMessageListener;

    #calls: Lcom/didi/im/helper/IMPushHelper;->onAudioResponseMessageReceived(Lcom/didi/im/helper/IMPushHelper$AudioResponseMessageListener;[B)V
    invoke-static {v0, p3}, Lcom/didi/im/helper/IMPushHelper;->access$000(Lcom/didi/im/helper/IMPushHelper$AudioResponseMessageListener;[B)V

    .line 168
    return-void
.end method
