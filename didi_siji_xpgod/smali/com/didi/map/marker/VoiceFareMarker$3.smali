.class Lcom/didi/map/marker/VoiceFareMarker$3;
.super Ljava/lang/Object;
.source "VoiceFareMarker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/marker/VoiceFareMarker;->startAnimate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/marker/VoiceFareMarker;


# direct methods
.method constructor <init>(Lcom/didi/map/marker/VoiceFareMarker;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/didi/map/marker/VoiceFareMarker$3;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$3;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    #getter for: Lcom/didi/map/marker/VoiceFareMarker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/map/marker/VoiceFareMarker;->access$400(Lcom/didi/map/marker/VoiceFareMarker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 117
    return-void
.end method
