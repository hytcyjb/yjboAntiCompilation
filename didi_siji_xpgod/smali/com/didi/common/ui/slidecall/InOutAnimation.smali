.class public abstract Lcom/didi/common/ui/slidecall/InOutAnimation;
.super Landroid/view/animation/AnimationSet;
.source "InOutAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/slidecall/InOutAnimation$1;,
        Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;
    }
.end annotation


# instance fields
.field public direction:Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;


# direct methods
.method public constructor <init>(Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;J[Landroid/view/View;)V
    .locals 2
    .parameter "direction"
    .parameter "l"
    .parameter "aview"

    .prologue
    .line 15
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 16
    iput-object p1, p0, Lcom/didi/common/ui/slidecall/InOutAnimation;->direction:Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    .line 17
    sget-object v0, Lcom/didi/common/ui/slidecall/InOutAnimation$1;->$SwitchMap$com$didi$common$ui$slidecall$InOutAnimation$Direction:[I

    iget-object v1, p0, Lcom/didi/common/ui/slidecall/InOutAnimation;->direction:Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    invoke-virtual {v1}, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 26
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/didi/common/ui/slidecall/InOutAnimation;->setDuration(J)V

    .line 27
    return-void

    .line 19
    :pswitch_0
    invoke-virtual {p0, p4}, Lcom/didi/common/ui/slidecall/InOutAnimation;->addInAnimation([Landroid/view/View;)V

    goto :goto_0

    .line 22
    :pswitch_1
    invoke-virtual {p0, p4}, Lcom/didi/common/ui/slidecall/InOutAnimation;->addOutAnimation([Landroid/view/View;)V

    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected abstract addInAnimation([Landroid/view/View;)V
.end method

.method protected abstract addOutAnimation([Landroid/view/View;)V
.end method
