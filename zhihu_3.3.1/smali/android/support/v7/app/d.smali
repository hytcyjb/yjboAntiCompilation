.class Landroid/support/v7/app/d;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/d$c;,
        Landroid/support/v7/app/d$a;,
        Landroid/support/v7/app/d$b;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/ListAdapter;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Landroid/os/Handler;

.field private final N:Landroid/view/View$OnClickListener;

.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v7/app/n;

.field private final c:Landroid/view/Window;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/view/View;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Landroid/widget/Button;

.field private o:Ljava/lang/CharSequence;

.field private p:Landroid/os/Message;

.field private q:Landroid/widget/Button;

.field private r:Ljava/lang/CharSequence;

.field private s:Landroid/os/Message;

.field private t:Landroid/widget/Button;

.field private u:Ljava/lang/CharSequence;

.field private v:Landroid/os/Message;

.field private w:Landroid/support/v4/widget/NestedScrollView;

.field private x:I

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/n;Landroid/view/Window;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v3, p0, Landroid/support/v7/app/d;->m:Z

    .line 93
    iput v3, p0, Landroid/support/v7/app/d;->x:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/d;->E:I

    .line 112
    iput v3, p0, Landroid/support/v7/app/d;->L:I

    .line 116
    new-instance v0, Landroid/support/v7/app/d$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/d$1;-><init>(Landroid/support/v7/app/d;)V

    iput-object v0, p0, Landroid/support/v7/app/d;->N:Landroid/view/View$OnClickListener;

    .line 167
    iput-object p1, p0, Landroid/support/v7/app/d;->a:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Landroid/support/v7/app/d;->b:Landroid/support/v7/app/n;

    .line 169
    iput-object p3, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    .line 170
    new-instance v0, Landroid/support/v7/app/d$b;

    invoke-direct {v0, p2}, Landroid/support/v7/app/d$b;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Landroid/support/v7/app/d;->M:Landroid/os/Handler;

    .line 172
    const/4 v0, 0x0

    sget-object v1, Landroid/support/v7/a/a$k;->AlertDialog:[I

    sget v2, Landroid/support/v7/a/a$a;->alertDialogStyle:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    sget v1, Landroid/support/v7/a/a$k;->AlertDialog_android_layout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->F:I

    .line 176
    sget v1, Landroid/support/v7/a/a$k;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->G:I

    .line 178
    sget v1, Landroid/support/v7/a/a$k;->AlertDialog_listLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->H:I

    .line 179
    sget v1, Landroid/support/v7/a/a$k;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->I:I

    .line 180
    sget v1, Landroid/support/v7/a/a$k;->AlertDialog_singleChoiceItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->J:I

    .line 182
    sget v1, Landroid/support/v7/a/a$k;->AlertDialog_listItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->K:I

    .line 184
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/d;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput p1, p0, Landroid/support/v7/app/d;->E:I

    return p1
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 419
    instance-of v0, p2, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 420
    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 423
    :goto_0
    check-cast v0, Landroid/view/ViewGroup;

    .line 439
    :goto_1
    return-object v0

    .line 427
    :cond_0
    if-eqz p2, :cond_1

    .line 428
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 429
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 430
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 435
    :cond_1
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 436
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 439
    :goto_2
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_2

    :cond_3
    move-object v0, p2

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/d;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/app/d;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Landroid/support/v7/app/d;->D:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v7/app/d;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Landroid/support/v7/app/d;->b(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 595
    iget-object v1, p0, Landroid/support/v7/app/d;->g:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 596
    iget-object v1, p0, Landroid/support/v7/app/d;->g:Landroid/view/View;

    .line 604
    :goto_0
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 605
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/support/v7/app/d;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 606
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 610
    :cond_2
    if-eqz v0, :cond_7

    .line 611
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v2, Landroid/support/v7/a/a$f;->custom:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 612
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    iget-boolean v1, p0, Landroid/support/v7/app/d;->m:Z

    if-eqz v1, :cond_3

    .line 615
    iget v1, p0, Landroid/support/v7/app/d;->i:I

    iget v2, p0, Landroid/support/v7/app/d;->j:I

    iget v3, p0, Landroid/support/v7/app/d;->k:I

    iget v4, p0, Landroid/support/v7/app/d;->l:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 619
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 620
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 625
    :cond_4
    :goto_1
    return-void

    .line 597
    :cond_5
    iget v1, p0, Landroid/support/v7/app/d;->h:I

    if-eqz v1, :cond_6

    .line 598
    iget-object v1, p0, Landroid/support/v7/app/d;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 599
    iget v2, p0, Landroid/support/v7/app/d;->h:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 601
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 623
    :cond_7
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 515
    iget-object v1, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v2, Landroid/support/v7/a/a$f;->scrollIndicatorUp:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 516
    iget-object v1, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v3, Landroid/support/v7/a/a$f;->scrollIndicatorDown:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 518
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    .line 520
    invoke-static {p2, p3, p4}, Landroid/support/v4/view/ah;->a(Landroid/view/View;II)V

    .line 522
    if-eqz v2, :cond_0

    .line 523
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 525
    :cond_0
    if-eqz v1, :cond_1

    .line 526
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 591
    :cond_1
    :goto_0
    return-void

    .line 530
    :cond_2
    if-eqz v2, :cond_3

    and-int/lit8 v3, p3, 0x1

    if-nez v3, :cond_3

    .line 531
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v2, v0

    .line 534
    :cond_3
    if-eqz v1, :cond_8

    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_8

    .line 535
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 539
    :goto_1
    if-nez v2, :cond_4

    if-eqz v0, :cond_1

    .line 543
    :cond_4
    iget-object v1, p0, Landroid/support/v7/app/d;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 545
    iget-object v1, p0, Landroid/support/v7/app/d;->w:Landroid/support/v4/widget/NestedScrollView;

    new-instance v3, Landroid/support/v7/app/d$2;

    invoke-direct {v3, p0, v2, v0}, Landroid/support/v7/app/d$2;-><init>(Landroid/support/v7/app/d;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$b;)V

    .line 555
    iget-object v1, p0, Landroid/support/v7/app/d;->w:Landroid/support/v4/widget/NestedScrollView;

    new-instance v3, Landroid/support/v7/app/d$3;

    invoke-direct {v3, p0, v2, v0}, Landroid/support/v7/app/d$3;-><init>(Landroid/support/v7/app/d;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 561
    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    if-eqz v1, :cond_6

    .line 563
    iget-object v1, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    new-instance v3, Landroid/support/v7/app/d$4;

    invoke-direct {v3, p0, v2, v0}, Landroid/support/v7/app/d$4;-><init>(Landroid/support/v7/app/d;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 574
    iget-object v1, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    new-instance v3, Landroid/support/v7/app/d$5;

    invoke-direct {v3, p0, v2, v0}, Landroid/support/v7/app/d$5;-><init>(Landroid/support/v7/app/d;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 582
    :cond_6
    if-eqz v2, :cond_7

    .line 583
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 585
    :cond_7
    if-eqz v0, :cond_1

    .line 586
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method

.method static a(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    :goto_0
    return v0

    .line 192
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move v0, v1

    .line 193
    goto :goto_0

    .line 196
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 197
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 198
    :cond_2
    if-lez v2, :cond_3

    .line 199
    add-int/lit8 v2, v2, -0x1

    .line 200
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 201
    invoke-static {v3}, Landroid/support/v7/app/d;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 206
    goto :goto_0
.end method

.method private b()I
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Landroid/support/v7/app/d;->G:I

    if-nez v0, :cond_0

    .line 219
    iget v0, p0, Landroid/support/v7/app/d;->F:I

    .line 224
    :goto_0
    return v0

    .line 221
    :cond_0
    iget v0, p0, Landroid/support/v7/app/d;->L:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 222
    iget v0, p0, Landroid/support/v7/app/d;->G:I

    goto :goto_0

    .line 224
    :cond_1
    iget v0, p0, Landroid/support/v7/app/d;->F:I

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/app/d;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/d;->p:Landroid/os/Message;

    return-object v0
.end method

.method private static b(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 703
    if-eqz p1, :cond_0

    .line 704
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/ah;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 707
    :cond_0
    if-eqz p2, :cond_1

    .line 708
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/ah;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 711
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 704
    goto :goto_0

    :cond_3
    move v1, v2

    .line 708
    goto :goto_1
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x8

    .line 628
    iget-object v0, p0, Landroid/support/v7/app/d;->C:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 630
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 633
    iget-object v2, p0, Landroid/support/v7/app/d;->C:Landroid/view/View;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 636
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/a/a$f;->title_template:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 637
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 671
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    .line 641
    iget-object v0, p0, Landroid/support/v7/app/d;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 642
    :goto_1
    if-eqz v0, :cond_4

    .line 644
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/a/a$f;->alertTitle:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/d;->A:Landroid/widget/TextView;

    .line 645
    iget-object v0, p0, Landroid/support/v7/app/d;->A:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/app/d;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget v0, p0, Landroid/support/v7/app/d;->x:I

    if-eqz v0, :cond_2

    .line 651
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/app/d;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 641
    goto :goto_1

    .line 652
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/d;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 653
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/app/d;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 657
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/d;->A:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 661
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 665
    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/a/a$f;->title_template:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 666
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 668
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v7/app/d;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    return-object v0
.end method

.method private c()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 443
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v2, Landroid/support/v7/a/a$f;->parentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 444
    sget v2, Landroid/support/v7/a/a$f;->topPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 445
    sget v4, Landroid/support/v7/a/a$f;->contentPanel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 446
    sget v5, Landroid/support/v7/a/a$f;->buttonPanel:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 450
    sget v6, Landroid/support/v7/a/a$f;->customPanel:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 451
    invoke-direct {p0, v0}, Landroid/support/v7/app/d;->a(Landroid/view/ViewGroup;)V

    .line 453
    sget v6, Landroid/support/v7/a/a$f;->topPanel:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 454
    sget v7, Landroid/support/v7/a/a$f;->contentPanel:I

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 455
    sget v8, Landroid/support/v7/a/a$f;->buttonPanel:I

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 458
    invoke-direct {p0, v6, v2}, Landroid/support/v7/app/d;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 459
    invoke-direct {p0, v7, v4}, Landroid/support/v7/app/d;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 460
    invoke-direct {p0, v8, v5}, Landroid/support/v7/app/d;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 462
    invoke-direct {p0, v6}, Landroid/support/v7/app/d;->c(Landroid/view/ViewGroup;)V

    .line 463
    invoke-direct {p0, v4}, Landroid/support/v7/app/d;->d(Landroid/view/ViewGroup;)V

    .line 464
    invoke-direct {p0, v2}, Landroid/support/v7/app/d;->b(Landroid/view/ViewGroup;)V

    .line 466
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_4

    move v0, v3

    .line 468
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eq v2, v9, :cond_5

    move v2, v3

    .line 470
    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v9, :cond_6

    move v5, v3

    .line 474
    :goto_2
    if-nez v5, :cond_0

    .line 475
    if-eqz v6, :cond_0

    .line 476
    sget v4, Landroid/support/v7/a/a$f;->textSpacerNoButtons:I

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 477
    if-eqz v4, :cond_0

    .line 478
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 483
    :cond_0
    if-eqz v2, :cond_1

    .line 485
    iget-object v4, p0, Landroid/support/v7/app/d;->w:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v4, :cond_1

    .line 486
    iget-object v4, p0, Landroid/support/v7/app/d;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v4, v3}, Landroid/support/v4/widget/NestedScrollView;->setClipToPadding(Z)V

    .line 491
    :cond_1
    if-nez v0, :cond_2

    .line 492
    iget-object v0, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    move-object v4, v0

    .line 493
    :goto_3
    if-eqz v4, :cond_2

    .line 494
    if-eqz v2, :cond_8

    move v2, v3

    :goto_4
    if-eqz v5, :cond_9

    const/4 v0, 0x2

    :goto_5
    or-int/2addr v0, v2

    .line 496
    const/4 v1, 0x3

    invoke-direct {p0, v6, v4, v0, v1}, Landroid/support/v7/app/d;->a(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 501
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    .line 502
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/d;->D:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3

    .line 503
    iget-object v1, p0, Landroid/support/v7/app/d;->D:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 504
    iget v1, p0, Landroid/support/v7/app/d;->E:I

    .line 505
    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    .line 506
    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 507
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 510
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 466
    goto :goto_0

    :cond_5
    move v2, v1

    .line 468
    goto :goto_1

    :cond_6
    move v5, v1

    .line 470
    goto :goto_2

    .line 492
    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/support/v4/widget/NestedScrollView;

    move-object v4, v0

    goto :goto_3

    :cond_8
    move v2, v1

    .line 494
    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_5
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 674
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/a/a$f;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/support/v4/widget/NestedScrollView;

    .line 675
    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    .line 676
    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 679
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    .line 680
    iget-object v0, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 700
    :goto_0
    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/d;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/app/d;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 687
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/support/v4/widget/NestedScrollView;

    iget-object v1, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    .line 690
    iget-object v0, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 691
    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 692
    iget-object v1, p0, Landroid/support/v7/app/d;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 693
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 694
    iget-object v2, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 697
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Landroid/support/v7/app/d;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/d;->s:Landroid/os/Message;

    return-object v0
.end method

.method private d(Landroid/view/ViewGroup;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 714
    .line 715
    const/4 v4, 0x2

    .line 716
    const/4 v5, 0x4

    .line 718
    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    .line 719
    iget-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v7/app/d;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    iget-object v0, p0, Landroid/support/v7/app/d;->o:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v2

    .line 729
    :goto_0
    const v0, 0x102001a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    .line 730
    iget-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/d;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    iget-object v0, p0, Landroid/support/v7/app/d;->r:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 741
    :goto_1
    const v0, 0x102001b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    .line 742
    iget-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    iget-object v4, p0, Landroid/support/v7/app/d;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    iget-object v0, p0, Landroid/support/v7/app/d;->u:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 745
    iget-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 753
    :goto_2
    if-eqz v1, :cond_4

    .line 754
    :goto_3
    if-nez v3, :cond_0

    .line 755
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 757
    :cond_0
    return-void

    .line 724
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v7/app/d;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    .line 726
    goto :goto_0

    .line 735
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/d;->r:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 738
    or-int/2addr v1, v4

    goto :goto_1

    .line 747
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    iget-object v4, p0, Landroid/support/v7/app/d;->u:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 748
    iget-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 750
    or-int/2addr v1, v5

    goto :goto_2

    :cond_4
    move v3, v2

    .line 753
    goto :goto_3
.end method

.method static synthetic e(Landroid/support/v7/app/d;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v7/app/d;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/d;->v:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/app/d;)Landroid/support/v7/app/n;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/d;->b:Landroid/support/v7/app/n;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v7/app/d;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/d;->M:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v7/app/d;)Landroid/support/v4/widget/NestedScrollView;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/support/v4/widget/NestedScrollView;

    return-object v0
.end method

.method static synthetic j(Landroid/support/v7/app/d;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic k(Landroid/support/v7/app/d;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/d;->H:I

    return v0
.end method

.method static synthetic l(Landroid/support/v7/app/d;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/d;->I:I

    return v0
.end method

.method static synthetic m(Landroid/support/v7/app/d;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/d;->J:I

    return v0
.end method

.method static synthetic n(Landroid/support/v7/app/d;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/d;->K:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v7/app/d;->b:Landroid/support/v7/app/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/n;->a(I)Z

    .line 212
    invoke-direct {p0}, Landroid/support/v7/app/d;->b()I

    move-result v0

    .line 213
    iget-object v1, p0, Landroid/support/v7/app/d;->b:Landroid/support/v7/app/n;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/n;->setContentView(I)V

    .line 214
    invoke-direct {p0}, Landroid/support/v7/app/d;->c()V

    .line 215
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/d;->g:Landroid/view/View;

    .line 253
    iput p1, p0, Landroid/support/v7/app/d;->h:I

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/d;->m:Z

    .line 255
    return-void
.end method

.method public a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 303
    iget-object v0, p0, Landroid/support/v7/app/d;->M:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 306
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :pswitch_0
    iput-object p2, p0, Landroid/support/v7/app/d;->o:Ljava/lang/CharSequence;

    .line 310
    iput-object p4, p0, Landroid/support/v7/app/d;->p:Landroid/os/Message;

    .line 326
    :goto_0
    return-void

    .line 314
    :pswitch_1
    iput-object p2, p0, Landroid/support/v7/app/d;->r:Ljava/lang/CharSequence;

    .line 315
    iput-object p4, p0, Landroid/support/v7/app/d;->s:Landroid/os/Message;

    goto :goto_0

    .line 319
    :pswitch_2
    iput-object p2, p0, Landroid/support/v7/app/d;->u:Ljava/lang/CharSequence;

    .line 320
    iput-object p4, p0, Landroid/support/v7/app/d;->v:Landroid/os/Message;

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 354
    iput-object p1, p0, Landroid/support/v7/app/d;->y:Landroid/graphics/drawable/Drawable;

    .line 355
    iput v1, p0, Landroid/support/v7/app/d;->x:I

    .line 357
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 358
    if-eqz p1, :cond_1

    .line 359
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Landroid/support/v7/app/d;->g:Landroid/view/View;

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/d;->h:I

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/d;->m:Z

    .line 274
    iput p2, p0, Landroid/support/v7/app/d;->i:I

    .line 275
    iput p3, p0, Landroid/support/v7/app/d;->j:I

    .line 276
    iput p4, p0, Landroid/support/v7/app/d;->k:I

    .line 277
    iput p5, p0, Landroid/support/v7/app/d;->l:I

    .line 278
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Landroid/support/v7/app/d;->d:Ljava/lang/CharSequence;

    .line 229
    iget-object v0, p0, Landroid/support/v7/app/d;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Landroid/support/v7/app/d;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_0
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/d;->y:Landroid/graphics/drawable/Drawable;

    .line 336
    iput p1, p0, Landroid/support/v7/app/d;->x:I

    .line 338
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 339
    if-eqz p1, :cond_1

    .line 340
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/app/d;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Landroid/support/v7/app/d;->C:Landroid/view/View;

    .line 239
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Landroid/support/v7/app/d;->e:Ljava/lang/CharSequence;

    .line 243
    iget-object v0, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)I
    .locals 3
    .parameter

    .prologue
    .line 374
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 375
    iget-object v1, p0, Landroid/support/v7/app/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 376
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    return v0
.end method

.method public c(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 261
    iput-object p1, p0, Landroid/support/v7/app/d;->g:Landroid/view/View;

    .line 262
    iput v0, p0, Landroid/support/v7/app/d;->h:I

    .line 263
    iput-boolean v0, p0, Landroid/support/v7/app/d;->m:Z

    .line 264
    return-void
.end method
