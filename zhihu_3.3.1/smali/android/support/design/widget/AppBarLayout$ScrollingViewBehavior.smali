.class public Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;
.super Landroid/support/design/widget/l;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1141
    invoke-direct {p0}, Landroid/support/design/widget/l;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1144
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1146
    sget-object v0, Landroid/support/design/a$i;->ScrollingViewBehavior_Params:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1148
    sget v1, Landroid/support/design/a$i;->ScrollingViewBehavior_Params_behavior_overlapTop:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->b(I)V

    .line 1150
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1151
    return-void
.end method

.method private static a(Landroid/support/design/widget/AppBarLayout;)I
    .locals 2
    .parameter

    .prologue
    .line 1205
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v0

    .line 1207
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    if-eqz v1, :cond_0

    .line 1208
    check-cast v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v0

    .line 1210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1167
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v0

    .line 1169
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    if-eqz v1, :cond_0

    .line 1172
    check-cast v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    .line 1173
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    .line 1174
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/AppBarLayout$Behavior;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->c(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1179
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)F
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1184
    instance-of v1, p1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_0

    .line 1185
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 1186
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    .line 1187
    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout;->b(Landroid/support/design/widget/AppBarLayout;)I

    move-result v2

    .line 1188
    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a(Landroid/support/design/widget/AppBarLayout;)I

    move-result v3

    .line 1190
    if-eqz v2, :cond_1

    add-int v4, v1, v3

    if-gt v4, v2, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return v0

    .line 1194
    :cond_1
    sub-int/2addr v1, v2

    .line 1195
    if-eqz v1, :cond_0

    .line 1197
    const/high16 v0, 0x3f80

    int-to-float v2, v3

    int-to-float v1, v1

    div-float v1, v2, v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method a(Ljava/util/List;)Landroid/view/View;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 1215
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1216
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1217
    instance-of v3, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v3, :cond_0

    .line 1221
    :goto_1
    return-object v0

    .line 1215
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1221
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1139
    invoke-super {p0, p1}, Landroid/support/design/widget/l;->a(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1139
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/l;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1139
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/l;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()I
    .locals 1

    .prologue
    .line 1139
    invoke-super {p0}, Landroid/support/design/widget/l;->b()I

    move-result v0

    return v0
.end method

.method b(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 1226
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    .line 1227
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    .line 1229
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/design/widget/l;->b(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1156
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    return v0
.end method

.method public c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1162
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->e(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1163
    const/4 v0, 0x0

    return v0
.end method
