.class synthetic Lcom/didi/common/ui/slidecall/ComposerButtonAnimation$1;
.super Ljava/lang/Object;
.source "ComposerButtonAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/slidecall/ComposerButtonAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$didi$common$ui$slidecall$InOutAnimation$Direction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;->values()[Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/didi/common/ui/slidecall/ComposerButtonAnimation$1;->$SwitchMap$com$didi$common$ui$slidecall$InOutAnimation$Direction:[I

    :try_start_0
    sget-object v0, Lcom/didi/common/ui/slidecall/ComposerButtonAnimation$1;->$SwitchMap$com$didi$common$ui$slidecall$InOutAnimation$Direction:[I

    sget-object v1, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;->IN:Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    invoke-virtual {v1}, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/didi/common/ui/slidecall/ComposerButtonAnimation$1;->$SwitchMap$com$didi$common$ui$slidecall$InOutAnimation$Direction:[I

    sget-object v1, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;->OUT:Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    invoke-virtual {v1}, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
