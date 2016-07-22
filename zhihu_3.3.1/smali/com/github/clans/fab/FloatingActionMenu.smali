.class public Lcom/github/clans/fab/FloatingActionMenu;
.super Landroid/view/ViewGroup;
.source "FloatingActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/clans/fab/FloatingActionMenu$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private C:F

.field private D:F

.field private E:F

.field private F:I

.field private G:I

.field private H:I

.field private I:Landroid/graphics/drawable/Drawable;

.field private J:I

.field private K:Landroid/view/animation/Interpolator;

.field private L:Landroid/view/animation/Interpolator;

.field private M:Z

.field private N:Z

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:Z

.field private T:Landroid/widget/ImageView;

.field private U:Landroid/view/animation/Animation;

.field private V:Landroid/view/animation/Animation;

.field private W:Z

.field a:Landroid/view/GestureDetector;

.field private aa:I

.field private ab:Lcom/github/clans/fab/FloatingActionMenu$a;

.field private ac:Landroid/animation/ValueAnimator;

.field private ad:Landroid/animation/ValueAnimator;

.field private ae:I

.field private af:I

.field private ag:Landroid/content/Context;

.field private ah:Ljava/lang/String;

.field private ai:Z

.field private b:Landroid/animation/AnimatorSet;

.field private c:Landroid/animation/AnimatorSet;

.field private d:Landroid/animation/AnimatorSet;

.field private e:I

.field private f:Lcom/github/clans/fab/FloatingActionButton;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Landroid/os/Handler;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/content/res/ColorStateList;

.field private u:F

.field private v:I

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/clans/fab/FloatingActionMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/clans/fab/FloatingActionMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x4100

    const/high16 v3, 0x4040

    const/high16 v2, 0x4080

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    .line 44
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    .line 47
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    .line 50
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    .line 51
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->i:I

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->m:Landroid/os/Handler;

    .line 58
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    .line 59
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->q:I

    .line 60
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    .line 61
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    .line 64
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->v:I

    .line 71
    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->C:F

    .line 72
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->D:F

    .line 73
    iput v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->E:F

    .line 81
    iput-boolean v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->M:Z

    .line 87
    iput-boolean v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->S:Z

    .line 586
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/FloatingActionMenu$4;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/FloatingActionMenu$4;-><init>(Lcom/github/clans/fab/FloatingActionMenu;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->a:Landroid/view/GestureDetector;

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/github/clans/fab/FloatingActionMenu;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method private a(I)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    .line 231
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->q:I

    .line 232
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    .line 233
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    .line 234
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    sget-object v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu:[I

    invoke-virtual {p1, p2, v0, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 124
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_buttonSpacing:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    .line 125
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_margin:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    .line 126
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_position:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->af:I

    .line 127
    sget v2, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_showAnimation:I

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->af:I

    if-nez v0, :cond_4

    sget v0, Lcom/github/clans/fab/a$a;->fab_slide_in_from_right:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->n:I

    .line 129
    sget v2, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_hideAnimation:I

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->af:I

    if-nez v0, :cond_5

    sget v0, Lcom/github/clans/fab/a$a;->fab_slide_out_to_right:I

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->o:I

    .line 131
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_paddingTop:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    .line 132
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_paddingRight:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->q:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->q:I

    .line 133
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_paddingBottom:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    .line 134
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_paddingLeft:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    .line 135
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_textColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->t:Landroid/content/res/ColorStateList;

    .line 137
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->t:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 138
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->t:Landroid/content/res/ColorStateList;

    .line 140
    :cond_0
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_textSize:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/github/clans/fab/a$b;->labels_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->u:F

    .line 141
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_cornerRadius:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->v:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->v:I

    .line 142
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_showShadow:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->w:Z

    .line 143
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_colorNormal:I

    const v2, -0xcccccd

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->x:I

    .line 144
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_colorPressed:I

    const v2, -0xbbbbbc

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->y:I

    .line 145
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_colorRipple:I

    const v2, 0x66ffffff

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->z:I

    .line 146
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_showShadow:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->A:Z

    .line 147
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_shadowColor:I

    const/high16 v2, 0x6600

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->B:I

    .line 148
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_shadowRadius:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->C:F

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->C:F

    .line 149
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_shadowXOffset:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->D:F

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->D:F

    .line 150
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_shadowYOffset:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->E:F

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->E:F

    .line 151
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_colorNormal:I

    const v2, -0x25bcca

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    .line 152
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_colorPressed:I

    const v2, -0x18afbd

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    .line 153
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_colorRipple:I

    const v2, -0x66000001

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->H:I

    .line 154
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_animationDelayPerItem:I

    const/16 v2, 0x32

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    .line 155
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_icon:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->I:Landroid/graphics/drawable/Drawable;

    .line 156
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->I:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/github/clans/fab/a$c;->fab_add:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->I:Landroid/graphics/drawable/Drawable;

    .line 159
    :cond_1
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_singleLine:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->N:Z

    .line 160
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_ellipsize:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->O:I

    .line 161
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_maxLines:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->P:I

    .line 162
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_fab_size:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->Q:I

    .line 163
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_style:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->R:I

    .line 164
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_openDirection:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->aa:I

    .line 165
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_backgroundColor:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->ae:I

    .line 167
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_fab_label:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    iput-boolean v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->ai:Z

    .line 169
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_fab_label:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->ah:Ljava/lang/String;

    .line 172
    :cond_2
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_padding:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_labels_padding:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 174
    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->a(I)V

    .line 177
    :cond_3
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->K:Landroid/view/animation/Interpolator;

    .line 178
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->L:Landroid/view/animation/Interpolator;

    .line 179
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->R:I

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->ag:Landroid/content/Context;

    .line 181
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->c()V

    .line 182
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->e()V

    .line 183
    invoke-direct {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->a(Landroid/content/res/TypedArray;)V

    .line 185
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    return-void

    .line 127
    :cond_4
    sget v0, Lcom/github/clans/fab/a$a;->fab_slide_in_from_left:I

    goto/16 :goto_0

    .line 129
    :cond_5
    sget v0, Lcom/github/clans/fab/a$a;->fab_slide_out_to_left:I

    goto/16 :goto_1
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter

    .prologue
    .line 189
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_fab_show_animation:I

    sget v1, Lcom/github/clans/fab/a$a;->fab_scale_up:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 190
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 191
    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V

    .line 193
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionMenu_menu_fab_hide_animation:I

    sget v1, Lcom/github/clans/fab/a$a;->fab_scale_down:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 194
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 195
    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V

    .line 196
    return-void
.end method

.method private a(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 465
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getLabelText()Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    :goto_0
    return-void

    .line 469
    :cond_0
    new-instance v3, Lcom/github/clans/fab/Label;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->ag:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/github/clans/fab/Label;-><init>(Landroid/content/Context;)V

    .line 470
    invoke-virtual {v3, v4}, Lcom/github/clans/fab/Label;->setClickable(Z)V

    .line 471
    invoke-virtual {v3, p1}, Lcom/github/clans/fab/Label;->setFab(Lcom/github/clans/fab/FloatingActionButton;)V

    .line 472
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->n:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 473
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->o:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 475
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->R:I

    if-lez v0, :cond_2

    .line 476
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->R:I

    invoke-virtual {v3, v0, v1}, Lcom/github/clans/fab/Label;->setTextAppearance(Landroid/content/Context;I)V

    .line 477
    invoke-virtual {v3, v5}, Lcom/github/clans/fab/Label;->setShowShadow(Z)V

    .line 478
    invoke-virtual {v3, v4}, Lcom/github/clans/fab/Label;->setUsingStyle(Z)V

    .line 511
    :cond_1
    :goto_1
    invoke-virtual {v3, v2}, Lcom/github/clans/fab/Label;->setText(Ljava/lang/CharSequence;)V

    .line 512
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    invoke-virtual {p0, v3}, Lcom/github/clans/fab/FloatingActionMenu;->addView(Landroid/view/View;)V

    .line 515
    sget v0, Lcom/github/clans/fab/a$d;->fab_label:I

    invoke-virtual {p1, v0, v3}, Lcom/github/clans/fab/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 480
    :cond_2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->x:I

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->y:I

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->z:I

    invoke-virtual {v3, v0, v1, v4}, Lcom/github/clans/fab/Label;->a(III)V

    .line 481
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->w:Z

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setShowShadow(Z)V

    .line 482
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->v:I

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setCornerRadius(I)V

    .line 483
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->O:I

    if-lez v0, :cond_3

    .line 484
    invoke-direct {p0, v3}, Lcom/github/clans/fab/FloatingActionMenu;->setLabelEllipsize(Lcom/github/clans/fab/Label;)V

    .line 486
    :cond_3
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->P:I

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setMaxLines(I)V

    .line 487
    invoke-virtual {v3}, Lcom/github/clans/fab/Label;->c()V

    .line 489
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->u:F

    invoke-virtual {v3, v5, v0}, Lcom/github/clans/fab/Label;->setTextSize(IF)V

    .line 490
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 492
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    .line 493
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    .line 494
    iget-boolean v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->w:Z

    if-eqz v4, :cond_4

    .line 495
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    move-result v4

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowXOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 496
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    move-result v4

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowYOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 499
    :cond_4
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    invoke-virtual {v3, v1, v0, v4, v5}, Lcom/github/clans/fab/Label;->setPadding(IIII)V

    .line 506
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->P:I

    if-ltz v0, :cond_5

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->N:Z

    if-eqz v0, :cond_1

    .line 507
    :cond_5
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->N:Z

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setSingleLine(Z)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/github/clans/fab/FloatingActionMenu;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->M:Z

    return v0
.end method

.method static synthetic a(Lcom/github/clans/fab/FloatingActionMenu;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->k:Z

    return p1
.end method

.method private b(I)I
    .locals 4
    .parameter

    .prologue
    .line 430
    int-to-double v0, p1

    const-wide v2, 0x3f9eb851eb851eb8L

    mul-double/2addr v0, v2

    int-to-double v2, p1

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static synthetic b(Lcom/github/clans/fab/FloatingActionMenu;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->W:Z

    return v0
.end method

.method static synthetic c(Lcom/github/clans/fab/FloatingActionMenu;)Lcom/github/clans/fab/FloatingActionButton;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method private c()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x12c

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 199
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->ae:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 200
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->ae:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 201
    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->ae:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 202
    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->ae:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 204
    new-array v4, v8, [I

    aput v6, v4, v6

    aput v0, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->ac:Landroid/animation/ValueAnimator;

    .line 205
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->ac:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 206
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->ac:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/github/clans/fab/FloatingActionMenu$1;

    invoke-direct {v5, p0, v1, v2, v3}, Lcom/github/clans/fab/FloatingActionMenu$1;-><init>(Lcom/github/clans/fab/FloatingActionMenu;III)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 214
    new-array v4, v8, [I

    aput v0, v4, v6

    aput v6, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->ad:Landroid/animation/ValueAnimator;

    .line 215
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->ad:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 216
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->ad:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/github/clans/fab/FloatingActionMenu$2;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/github/clans/fab/FloatingActionMenu$2;-><init>(Lcom/github/clans/fab/FloatingActionMenu;III)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 223
    return-void
.end method

.method static synthetic d(Lcom/github/clans/fab/FloatingActionMenu;)Lcom/github/clans/fab/FloatingActionMenu$a;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->ab:Lcom/github/clans/fab/FloatingActionMenu$a;

    return-object v0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->ae:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 237
    new-instance v0, Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 239
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->A:Z

    iput-boolean v1, v0, Lcom/github/clans/fab/FloatingActionButton;->b:Z

    .line 240
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->A:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->C:F

    invoke-static {v1, v2}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 242
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->D:F

    invoke-static {v1, v2}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 243
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->E:F

    invoke-static {v1, v2}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->H:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/clans/fab/FloatingActionButton;->a(III)V

    .line 246
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->B:I

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    .line 247
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->Q:I

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->a:I

    .line 248
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 249
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->ah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setLabelText(Ljava/lang/String;)V

    .line 251
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Landroid/widget/ImageView;

    .line 252
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->addView(Landroid/view/View;)V

    .line 257
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->f()V

    .line 258
    return-void
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v2, 0x4307

    const/high16 v1, -0x3cf9

    .line 263
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->aa:I

    if-nez v0, :cond_2

    .line 264
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->af:I

    if-nez v0, :cond_0

    move v0, v1

    .line 265
    :goto_0
    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->af:I

    if-nez v3, :cond_1

    .line 271
    :goto_1
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Landroid/widget/ImageView;

    const-string v3, "rotation"

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v0, v4, v6

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 278
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Landroid/widget/ImageView;

    const-string v3, "rotation"

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v5, v4, v6

    aput v1, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 285
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 286
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 288
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->K:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 289
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->L:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 291
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 292
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 293
    return-void

    :cond_0
    move v0, v2

    .line 264
    goto :goto_0

    :cond_1
    move v1, v2

    .line 265
    goto :goto_1

    .line 267
    :cond_2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->af:I

    if-nez v0, :cond_3

    move v0, v2

    .line 268
    :goto_2
    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->af:I

    if-nez v3, :cond_4

    :goto_3
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 267
    goto :goto_2

    :cond_4
    move v2, v1

    .line 268
    goto :goto_3
.end method

.method private g()V
    .locals 3

    .prologue
    .line 443
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    if-ge v1, v0, :cond_2

    .line 445
    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Landroid/widget/ImageView;

    if-ne v0, v2, :cond_1

    .line 443
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 447
    :cond_1
    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    .line 449
    sget v2, Lcom/github/clans/fab/a$d;->fab_label:I

    invoke-virtual {v0, v2}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 451
    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->a(Lcom/github/clans/fab/FloatingActionButton;)V

    .line 453
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    if-ne v0, v2, :cond_0

    .line 454
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    new-instance v2, Lcom/github/clans/fab/FloatingActionMenu$3;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/FloatingActionMenu$3;-><init>(Lcom/github/clans/fab/FloatingActionMenu;)V

    invoke-virtual {v0, v2}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 462
    :cond_2
    return-void
.end method

.method private setLabelEllipsize(Lcom/github/clans/fab/Label;)V
    .locals 1
    .parameter

    .prologue
    .line 519
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->O:I

    packed-switch v0, :pswitch_data_0

    .line 533
    :goto_0
    return-void

    .line 521
    :pswitch_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 524
    :pswitch_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 527
    :pswitch_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 530
    :pswitch_3
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected a()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 547
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 537
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 542
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->c(Z)V

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->b(Z)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 616
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 617
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->ac:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 621
    :cond_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->S:Z

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 623
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 632
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->l:Z

    .line 633
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v2, v1

    :goto_1
    if-ltz v3, :cond_3

    .line 634
    invoke-virtual {p0, v3}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 635
    instance-of v4, v0, Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    .line 636
    add-int/lit8 v1, v1, 0x1

    .line 638
    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    .line 639
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->m:Landroid/os/Handler;

    new-instance v5, Lcom/github/clans/fab/FloatingActionMenu$5;

    invoke-direct {v5, p0, v0, p1}, Lcom/github/clans/fab/FloatingActionMenu$5;-><init>(Lcom/github/clans/fab/FloatingActionMenu;Lcom/github/clans/fab/FloatingActionButton;Z)V

    int-to-long v6, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 654
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    add-int/2addr v0, v2

    move v8, v1

    move v1, v0

    move v0, v8

    .line 633
    :goto_2
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 625
    :cond_2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 626
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 658
    :cond_3
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->m:Landroid/os/Handler;

    new-instance v2, Lcom/github/clans/fab/FloatingActionMenu$6;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/FloatingActionMenu$6;-><init>(Lcom/github/clans/fab/FloatingActionMenu;)V

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    mul-int/2addr v1, v3

    int-to-long v4, v1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 669
    :cond_4
    return-void

    :cond_5
    move v0, v1

    move v1, v2

    goto :goto_2
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->k:Z

    return v0
.end method

.method public c(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 672
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 673
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->ad:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 677
    :cond_0
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->S:Z

    if-eqz v1, :cond_1

    .line 678
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    .line 679
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 688
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->l:Z

    move v1, v0

    move v2, v0

    move v3, v0

    .line 689
    :goto_1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 690
    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 691
    instance-of v4, v0, Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    .line 692
    add-int/lit8 v2, v2, 0x1

    .line 694
    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    .line 695
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->m:Landroid/os/Handler;

    new-instance v5, Lcom/github/clans/fab/FloatingActionMenu$7;

    invoke-direct {v5, p0, v0, p1}, Lcom/github/clans/fab/FloatingActionMenu$7;-><init>(Lcom/github/clans/fab/FloatingActionMenu;Lcom/github/clans/fab/FloatingActionButton;Z)V

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 710
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    add-int/2addr v3, v0

    .line 689
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 681
    :cond_3
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 682
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 714
    :cond_4
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->m:Landroid/os/Handler;

    new-instance v1, Lcom/github/clans/fab/FloatingActionMenu$8;

    invoke-direct {v1, p0}, Lcom/github/clans/fab/FloatingActionMenu$8;-><init>(Lcom/github/clans/fab/FloatingActionMenu;)V

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 725
    :cond_5
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 553
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->a()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->a(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAnimationDelayPerItem()I
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    return v0
.end method

.method public getIconToggleAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getMenuButtonColorNormal()I
    .locals 1

    .prologue
    .line 920
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    return v0
.end method

.method public getMenuButtonColorPressed()I
    .locals 1

    .prologue
    .line 934
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    return v0
.end method

.method public getMenuButtonColorRipple()I
    .locals 1

    .prologue
    .line 948
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->H:I

    return v0
.end method

.method public getMenuButtonLabelText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->ah:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 435
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 436
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->bringChildToFront(Landroid/view/View;)V

    .line 437
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->bringChildToFront(Landroid/view/View;)V

    .line 438
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    .line 439
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->g()V

    .line 440
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->af:I

    if-nez v0, :cond_2

    sub-int v0, p4, p2

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 351
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    move v3, v0

    .line 353
    :goto_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->aa:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v9, v0

    .line 355
    :goto_1
    if-eqz v9, :cond_4

    sub-int v0, p5, p3

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 356
    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 358
    :goto_2
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    .line 360
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v4}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 361
    invoke-virtual {v5}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    .line 360
    invoke-virtual {v2, v1, v0, v4, v5}, Lcom/github/clans/fab/FloatingActionButton;->layout(IIII)V

    .line 363
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    .line 364
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v2}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    .line 366
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Landroid/widget/ImageView;

    .line 367
    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 366
    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 369
    if-eqz v9, :cond_0

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 370
    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    add-int/2addr v0, v1

    .line 373
    :cond_0
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    move v2, v0

    :goto_3
    if-ltz v8, :cond_f

    .line 374
    invoke-virtual {p0, v8}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 376
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Landroid/widget/ImageView;

    if-ne v1, v0, :cond_5

    .line 373
    :cond_1
    :goto_4
    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_3

    .line 351
    :cond_2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    div-int/lit8 v0, v0, 0x2

    .line 352
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    move v3, v0

    goto/16 :goto_0

    .line 353
    :cond_3
    const/4 v0, 0x0

    move v9, v0

    goto/16 :goto_1

    .line 357
    :cond_4
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingTop()I

    move-result v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 378
    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    .line 380
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 382
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v3, v4

    .line 383
    if-eqz v9, :cond_8

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    sub-int/2addr v2, v4

    move v4, v2

    .line 385
    :goto_5
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    if-eq v0, v2, :cond_6

    .line 386
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v5

    .line 387
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    .line 386
    invoke-virtual {v0, v5, v4, v2, v6}, Lcom/github/clans/fab/FloatingActionButton;->layout(IIII)V

    .line 389
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->l:Z

    if-nez v2, :cond_6

    .line 390
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/github/clans/fab/FloatingActionButton;->b(Z)V

    .line 394
    :cond_6
    sget v2, Lcom/github/clans/fab/a$d;->fab_label:I

    invoke-virtual {v0, v2}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 395
    if-eqz v2, :cond_7

    .line 396
    iget-boolean v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->ai:Z

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    div-int/lit8 v5, v5, 0x2

    :goto_6
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    add-int/2addr v5, v6

    .line 397
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->af:I

    if-nez v6, :cond_a

    sub-int v5, v3, v5

    .line 401
    :goto_7
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->af:I

    if-nez v6, :cond_b

    .line 402
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v5, v6

    .line 405
    :goto_8
    iget v7, p0, Lcom/github/clans/fab/FloatingActionMenu;->af:I

    if-nez v7, :cond_c

    move v7, v6

    .line 409
    :goto_9
    iget v10, p0, Lcom/github/clans/fab/FloatingActionMenu;->af:I

    if-nez v10, :cond_d

    .line 413
    :goto_a
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->i:I

    sub-int v6, v4, v6

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v0

    .line 414
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v0, v10

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    .line 416
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v2, v7, v0, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 418
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->l:Z

    if-nez v0, :cond_7

    .line 419
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :cond_7
    if-eqz v9, :cond_e

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    sub-int v0, v4, v0

    :goto_b
    move v2, v0

    .line 425
    goto/16 :goto_4

    :cond_8
    move v4, v2

    .line 383
    goto :goto_5

    .line 396
    :cond_9
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    goto :goto_6

    .line 397
    :cond_a
    add-int/2addr v5, v3

    goto :goto_7

    .line 403
    :cond_b
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    goto :goto_8

    :cond_c
    move v7, v5

    .line 405
    goto :goto_9

    :cond_d
    move v5, v6

    .line 409
    goto :goto_a

    .line 425
    :cond_e
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v4

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    add-int/2addr v0, v1

    goto :goto_b

    .line 427
    :cond_f
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 297
    .line 298
    const/4 v8, 0x0

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    .line 300
    const/4 v7, 0x0

    .line 302
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/github/clans/fab/FloatingActionMenu;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 304
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    if-ge v6, v0, :cond_2

    .line 305
    invoke-virtual {p0, v6}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 307
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Landroid/widget/ImageView;

    if-ne v1, v0, :cond_1

    .line 304
    :cond_0
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 309
    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/github/clans/fab/FloatingActionMenu;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 310
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    goto :goto_1

    .line 313
    :cond_2
    const/4 v0, 0x0

    move v6, v0

    move v0, v8

    :goto_2
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    if-ge v6, v1, :cond_5

    .line 314
    const/4 v1, 0x0

    .line 315
    invoke-virtual {p0, v6}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 317
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Landroid/widget/ImageView;

    if-ne v2, v3, :cond_3

    move v1, v7

    move v2, v0

    .line 313
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    move v0, v2

    goto :goto_2

    .line 319
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v9, v1, v3

    .line 320
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v8, v0, v1

    .line 322
    sget v0, Lcom/github/clans/fab/a$d;->fab_label:I

    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/clans/fab/Label;

    .line 323
    if-eqz v1, :cond_8

    .line 324
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v0, v3

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->ai:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    div-int v10, v3, v0

    .line 325
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Lcom/github/clans/fab/Label;->a()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    add-int/2addr v0, v2

    add-int v3, v0, v10

    .line 326
    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/github/clans/fab/FloatingActionMenu;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 327
    invoke-virtual {v1}, Lcom/github/clans/fab/Label;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v9

    .line 328
    add-int/2addr v0, v10

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v1, v7

    move v2, v8

    goto :goto_3

    .line 324
    :cond_4
    const/4 v0, 0x2

    goto :goto_4

    .line 332
    :cond_5
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    add-int/2addr v2, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 334
    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 335
    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->b(I)I

    move-result v2

    .line 337
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_7

    .line 338
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->getDefaultSize(II)I

    move-result v0

    .line 341
    :goto_5
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    .line 342
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/github/clans/fab/FloatingActionMenu;->getDefaultSize(II)I

    move-result v1

    .line 345
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setMeasuredDimension(II)V

    .line 346
    return-void

    :cond_6
    move v1, v2

    goto :goto_6

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v1, v7

    move v2, v8

    goto/16 :goto_3

    :cond_9
    move v1, v7

    move v2, v0

    goto/16 :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->W:Z

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 582
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAnimated(Z)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x0

    .line 751
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->M:Z

    .line 752
    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 753
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 754
    return-void

    :cond_0
    move-wide v0, v4

    .line 752
    goto :goto_0

    :cond_1
    move-wide v2, v4

    .line 753
    goto :goto_1
.end method

.method public setAnimationDelayPerItem(I)V
    .locals 0
    .parameter

    .prologue
    .line 761
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    .line 762
    return-void
.end method

.method public setClosedOnTouchOutside(Z)V
    .locals 0
    .parameter

    .prologue
    .line 906
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->W:Z

    .line 907
    return-void
.end method

.method public setIconAnimated(Z)V
    .locals 0
    .parameter

    .prologue
    .line 773
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->S:Z

    .line 774
    return-void
.end method

.method public setIconAnimationCloseInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter

    .prologue
    .line 742
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 743
    return-void
.end method

.method public setIconAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter

    .prologue
    .line 733
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 734
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 735
    return-void
.end method

.method public setIconAnimationOpenInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter

    .prologue
    .line 738
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 739
    return-void
.end method

.method public setIconToggleAnimatorSet(Landroid/animation/AnimatorSet;)V
    .locals 0
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:Landroid/animation/AnimatorSet;

    .line 786
    return-void
.end method

.method public setMenuButtonColorNormal(I)V
    .locals 1
    .parameter

    .prologue
    .line 910
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    .line 911
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormal(I)V

    .line 912
    return-void
.end method

.method public setMenuButtonColorNormalResId(I)V
    .locals 1
    .parameter

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    .line 916
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormalResId(I)V

    .line 917
    return-void
.end method

.method public setMenuButtonColorPressed(I)V
    .locals 1
    .parameter

    .prologue
    .line 924
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    .line 925
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressed(I)V

    .line 926
    return-void
.end method

.method public setMenuButtonColorPressedResId(I)V
    .locals 1
    .parameter

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    .line 930
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressedResId(I)V

    .line 931
    return-void
.end method

.method public setMenuButtonColorRipple(I)V
    .locals 1
    .parameter

    .prologue
    .line 938
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->H:I

    .line 939
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRipple(I)V

    .line 940
    return-void
.end method

.method public setMenuButtonColorRippleResId(I)V
    .locals 1
    .parameter

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->H:I

    .line 944
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRippleResId(I)V

    .line 945
    return-void
.end method

.method public setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->V:Landroid/view/animation/Animation;

    .line 799
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 800
    return-void
.end method

.method public setMenuButtonLabelText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 992
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setLabelText(Ljava/lang/String;)V

    .line 993
    return-void
.end method

.method public setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/view/animation/Animation;

    .line 794
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 795
    return-void
.end method

.method public setOnMenuButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1001
    return-void
.end method

.method public setOnMenuToggleListener(Lcom/github/clans/fab/FloatingActionMenu$a;)V
    .locals 0
    .parameter

    .prologue
    .line 769
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->ab:Lcom/github/clans/fab/FloatingActionMenu$a;

    .line 770
    return-void
.end method
