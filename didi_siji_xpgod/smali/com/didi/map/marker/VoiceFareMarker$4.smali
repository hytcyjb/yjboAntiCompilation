.class Lcom/didi/map/marker/VoiceFareMarker$4;
.super Ljava/lang/Object;
.source "VoiceFareMarker.java"

# interfaces
.implements Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/map/marker/VoiceFareMarker;
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
    .line 191
    iput-object p1, p0, Lcom/didi/map/marker/VoiceFareMarker$4;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$4;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    const/4 v1, 0x0

    #setter for: Lcom/didi/map/marker/VoiceFareMarker;->isPlay:Z
    invoke-static {v0, v1}, Lcom/didi/map/marker/VoiceFareMarker;->access$002(Lcom/didi/map/marker/VoiceFareMarker;Z)Z

    .line 196
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$4;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    #calls: Lcom/didi/map/marker/VoiceFareMarker;->voicePlay()V
    invoke-static {v0}, Lcom/didi/map/marker/VoiceFareMarker;->access$500(Lcom/didi/map/marker/VoiceFareMarker;)V

    .line 197
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method
