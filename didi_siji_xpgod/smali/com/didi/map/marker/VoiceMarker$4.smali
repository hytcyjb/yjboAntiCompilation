.class Lcom/didi/map/marker/VoiceMarker$4;
.super Ljava/lang/Object;
.source "VoiceMarker.java"

# interfaces
.implements Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/map/marker/VoiceMarker;
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
    .line 140
    iput-object p1, p0, Lcom/didi/map/marker/VoiceMarker$4;->this$0:Lcom/didi/map/marker/VoiceMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$4;->this$0:Lcom/didi/map/marker/VoiceMarker;

    const/4 v1, 0x0

    #setter for: Lcom/didi/map/marker/VoiceMarker;->isPlay:Z
    invoke-static {v0, v1}, Lcom/didi/map/marker/VoiceMarker;->access$002(Lcom/didi/map/marker/VoiceMarker;Z)Z

    .line 145
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$4;->this$0:Lcom/didi/map/marker/VoiceMarker;

    #calls: Lcom/didi/map/marker/VoiceMarker;->voicePlay()V
    invoke-static {v0}, Lcom/didi/map/marker/VoiceMarker;->access$500(Lcom/didi/map/marker/VoiceMarker;)V

    .line 146
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method
