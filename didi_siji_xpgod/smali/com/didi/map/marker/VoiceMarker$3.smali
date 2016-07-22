.class Lcom/didi/map/marker/VoiceMarker$3;
.super Ljava/lang/Object;
.source "VoiceMarker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/marker/VoiceMarker;->startAnimate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/marker/VoiceMarker;


# direct methods
.method constructor <init>(Lcom/didi/map/marker/VoiceMarker;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/didi/map/marker/VoiceMarker$3;->this$0:Lcom/didi/map/marker/VoiceMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$3;->this$0:Lcom/didi/map/marker/VoiceMarker;

    #getter for: Lcom/didi/map/marker/VoiceMarker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/map/marker/VoiceMarker;->access$400(Lcom/didi/map/marker/VoiceMarker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 90
    return-void
.end method
