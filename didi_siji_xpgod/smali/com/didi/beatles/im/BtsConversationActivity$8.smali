.class Lcom/didi/beatles/im/BtsConversationActivity$8;
.super Ljava/lang/Object;
.source "BtsConversationActivity.java"

# interfaces
.implements Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/im/BtsConversationActivity;->startAudioRecorder()V
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
    .line 497
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationActivity$8;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    .prologue
    .line 500
    const v0, 0x7f0b0397

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 501
    return-void
.end method
