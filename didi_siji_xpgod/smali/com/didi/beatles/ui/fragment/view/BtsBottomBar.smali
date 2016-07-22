.class public Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;
.super Landroid/widget/RelativeLayout;
.source "BtsBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;
    }
.end annotation


# instance fields
.field private apply:Lx/TextView;

.field private final btnListener:Landroid/view/View$OnClickListener;

.field private drive_option:Lx/TextView;

.field private inviate:Lx/TextView;

.field private layout:Lx/RelativeLayout;

.field private final mListener:Landroid/view/View$OnClickListener;

.field private mlistener:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;

.field private onelayout:Lx/RelativeLayout;

.field private pasnge_option:Lx/TextView;

.field private twolayout:Lx/RelativeLayout;

.field private upgrade:Lx/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    new-instance v0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$1;-><init>(Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->mListener:Landroid/view/View$OnClickListener;

    .line 185
    new-instance v0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$2;-><init>(Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->btnListener:Landroid/view/View$OnClickListener;

    .line 66
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->init()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;)Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->mlistener:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030024

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, view:Landroid/view/View;
    const v2, 0x7f080122

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/TextView;

    iput-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->drive_option:Lx/TextView;

    .line 72
    const v2, 0x7f080123

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/TextView;

    iput-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->pasnge_option:Lx/TextView;

    .line 73
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->initButton()V

    .line 74
    const v2, 0x7f080121

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/RelativeLayout;

    iput-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->layout:Lx/RelativeLayout;

    .line 75
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->layout:Lx/RelativeLayout;

    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lx/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getUserRoleType()I

    move-result v0

    .line 77
    .local v0, role:I
    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->changeRole(I)V

    .line 78
    const v2, 0x7f080124

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/RelativeLayout;

    iput-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->onelayout:Lx/RelativeLayout;

    .line 79
    const v2, 0x7f080125

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/TextView;

    iput-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->upgrade:Lx/TextView;

    .line 80
    const v2, 0x7f080126

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/RelativeLayout;

    iput-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->twolayout:Lx/RelativeLayout;

    .line 81
    const v2, 0x7f080127

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/TextView;

    iput-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->apply:Lx/TextView;

    .line 82
    const v2, 0x7f080128

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/TextView;

    iput-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->inviate:Lx/TextView;

    .line 83
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->upgrade:Lx/TextView;

    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->btnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->apply:Lx/TextView;

    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->btnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->inviate:Lx/TextView;

    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->btnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->refreshTab()V

    .line 87
    return-void
.end method

.method private initButton()V
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/beatles/model/BtsConfig;->bts_button:Lcom/didi/beatles/model/BtsConfig$BtsButton;

    if-eqz v0, :cond_1

    .line 206
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/beatles/model/BtsConfig;->bts_button:Lcom/didi/beatles/model/BtsConfig$BtsButton;

    iget-object v0, v0, Lcom/didi/beatles/model/BtsConfig$BtsButton;->driver_text:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->drive_option:Lx/TextView;

    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/beatles/model/BtsConfig;->bts_button:Lcom/didi/beatles/model/BtsConfig$BtsButton;

    iget-object v1, v1, Lcom/didi/beatles/model/BtsConfig$BtsButton;->driver_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_0
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/beatles/model/BtsConfig;->bts_button:Lcom/didi/beatles/model/BtsConfig$BtsButton;

    iget-object v0, v0, Lcom/didi/beatles/model/BtsConfig$BtsButton;->passenger_text:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->pasnge_option:Lx/TextView;

    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/beatles/model/BtsConfig;->bts_button:Lcom/didi/beatles/model/BtsConfig$BtsButton;

    iget-object v1, v1, Lcom/didi/beatles/model/BtsConfig$BtsButton;->passenger_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_1
    return-void
.end method

.method private refreshBtnByCon(Lcom/didi/beatles/model/BtsConfig$Button;Lx/TextView;)V
    .locals 1
    .parameter "config"
    .parameter "btn"

    .prologue
    .line 143
    iget-object v0, p1, Lcom/didi/beatles/model/BtsConfig$Button;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p1, Lcom/didi/beatles/model/BtsConfig$Button;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->setStyle(Lx/TextView;Lcom/didi/beatles/model/BtsConfig$Button;)V

    .line 146
    invoke-virtual {p2, p1}, Lx/TextView;->setTag(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method private setStyle(Lx/TextView;Lcom/didi/beatles/model/BtsConfig$Button;)V
    .locals 1
    .parameter "view"
    .parameter "bts"

    .prologue
    .line 176
    iget v0, p2, Lcom/didi/beatles/model/BtsConfig$Button;->style:I

    if-nez v0, :cond_0

    .line 177
    const v0, 0x7f070047

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lx/TextView;->setTextColor(I)V

    .line 178
    const v0, 0x7f020107

    invoke-virtual {p1, v0}, Lx/TextView;->setBackgroundResource(I)V

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    const v0, 0x7f070001

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lx/TextView;->setTextColor(I)V

    .line 181
    const v0, 0x7f020102

    invoke-virtual {p1, v0}, Lx/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public changeRole(I)V
    .locals 7
    .parameter "role"

    .prologue
    const/4 v6, 0x2

    .line 97
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->drive_option:Lx/TextView;

    invoke-virtual {v3}, Lx/TextView;->clearAnimation()V

    .line 98
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->pasnge_option:Lx/TextView;

    invoke-virtual {v3}, Lx/TextView;->clearAnimation()V

    .line 99
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 102
    .local v0, animSet:Lcom/nineoldandroids/animation/AnimatorSet;
    if-nez p1, :cond_0

    .line 103
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->drive_option:Lx/TextView;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 104
    .local v1, animator1:Lcom/nineoldandroids/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->pasnge_option:Lx/TextView;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    .line 110
    .local v2, animator2:Lcom/nineoldandroids/animation/ObjectAnimator;
    :goto_0
    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 111
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->after(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 112
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 113
    return-void

    .line 106
    .end local v1           #animator1:Lcom/nineoldandroids/animation/ObjectAnimator;
    .end local v2           #animator2:Lcom/nineoldandroids/animation/ObjectAnimator;
    :cond_0
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->pasnge_option:Lx/TextView;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 107
    .restart local v1       #animator1:Lcom/nineoldandroids/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->drive_option:Lx/TextView;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    .restart local v2       #animator2:Lcom/nineoldandroids/animation/ObjectAnimator;
    goto :goto_0

    .line 103
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 104
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 106
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 107
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public refreshTab()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 116
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v2

    iget-boolean v1, v2, Lcom/didi/beatles/model/BtsConfig;->open:Z

    .line 117
    .local v1, flag:Z
    if-eqz v1, :cond_0

    .line 118
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->layout:Lx/RelativeLayout;

    invoke-virtual {v2, v4}, Lx/RelativeLayout;->setVisibility(I)V

    .line 119
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->onelayout:Lx/RelativeLayout;

    invoke-virtual {v2, v3}, Lx/RelativeLayout;->setVisibility(I)V

    .line 120
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->twolayout:Lx/RelativeLayout;

    invoke-virtual {v2, v3}, Lx/RelativeLayout;->setVisibility(I)V

    .line 140
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 123
    .local v0, buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/beatles/model/BtsConfig$Button;>;"
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->layout:Lx/RelativeLayout;

    invoke-virtual {v2, v3}, Lx/RelativeLayout;->setVisibility(I)V

    .line 125
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->onelayout:Lx/RelativeLayout;

    invoke-virtual {v2, v3}, Lx/RelativeLayout;->setVisibility(I)V

    .line 126
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->twolayout:Lx/RelativeLayout;

    invoke-virtual {v2, v4}, Lx/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 122
    .end local v0           #buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/beatles/model/BtsConfig$Button;>;"
    :cond_2
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    iget-object v0, v2, Lcom/didi/beatles/model/BtsConfig$Didialift;->buttons:Ljava/util/ArrayList;

    goto :goto_1

    .line 127
    .restart local v0       #buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/beatles/model/BtsConfig$Button;>;"
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 128
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->layout:Lx/RelativeLayout;

    invoke-virtual {v2, v3}, Lx/RelativeLayout;->setVisibility(I)V

    .line 129
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->onelayout:Lx/RelativeLayout;

    invoke-virtual {v2, v4}, Lx/RelativeLayout;->setVisibility(I)V

    .line 130
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->twolayout:Lx/RelativeLayout;

    invoke-virtual {v2, v3}, Lx/RelativeLayout;->setVisibility(I)V

    .line 131
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/beatles/model/BtsConfig$Button;

    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->upgrade:Lx/TextView;

    invoke-direct {p0, v2, v3}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->refreshBtnByCon(Lcom/didi/beatles/model/BtsConfig$Button;Lx/TextView;)V

    goto :goto_0

    .line 133
    :cond_4
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->layout:Lx/RelativeLayout;

    invoke-virtual {v2, v3}, Lx/RelativeLayout;->setVisibility(I)V

    .line 134
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->onelayout:Lx/RelativeLayout;

    invoke-virtual {v2, v3}, Lx/RelativeLayout;->setVisibility(I)V

    .line 135
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->twolayout:Lx/RelativeLayout;

    invoke-virtual {v2, v4}, Lx/RelativeLayout;->setVisibility(I)V

    .line 136
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/beatles/model/BtsConfig$Button;

    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->apply:Lx/TextView;

    invoke-direct {p0, v2, v3}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->refreshBtnByCon(Lcom/didi/beatles/model/BtsConfig$Button;Lx/TextView;)V

    .line 137
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/beatles/model/BtsConfig$Button;

    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->inviate:Lx/TextView;

    invoke-direct {p0, v2, v3}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->refreshBtnByCon(Lcom/didi/beatles/model/BtsConfig$Button;Lx/TextView;)V

    goto :goto_0
.end method

.method public setUiListener(Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->mlistener:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;

    .line 91
    return-void
.end method
