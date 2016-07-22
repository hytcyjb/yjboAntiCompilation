.class public Lcom/didi/common/helper/VoiceHelper;
.super Ljava/lang/Object;
.source "VoiceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static click()V
    .locals 1

    .prologue
    .line 21
    const v0, 0x7f05000b

    invoke-static {v0}, Lcom/didi/common/helper/VoiceHelper;->play(I)V

    .line 22
    return-void
.end method

.method public static guide(Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 25
    invoke-static {}, Lcom/didi/common/ui/component/VoicePlayer;->getInstance()Lcom/didi/common/ui/component/VoicePlayer;

    move-result-object v0

    const v1, 0x7f050009

    invoke-virtual {v0, v1, p0}, Lcom/didi/common/ui/component/VoicePlayer;->play(ILcom/didi/common/ui/component/VoicePlayer$VoiceListener;)V

    .line 26
    return-void
.end method

.method public static isPlaying()Z
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/didi/common/ui/component/VoicePlayer;->getInstance()Lcom/didi/common/ui/component/VoicePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/component/VoicePlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public static play(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 17
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 18
    return-void
.end method

.method public static stopGuide()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/didi/common/ui/component/VoicePlayer;->getInstance()Lcom/didi/common/ui/component/VoicePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/component/VoicePlayer;->stop()V

    .line 30
    return-void
.end method
