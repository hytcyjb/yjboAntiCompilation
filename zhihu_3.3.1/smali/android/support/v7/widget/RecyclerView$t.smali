.class Landroid/support/v7/widget/RecyclerView$t;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "t"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;

.field private b:I

.field private c:I

.field private d:Landroid/support/v4/widget/x;

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 4020
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4011
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->r()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/view/animation/Interpolator;

    .line 4015
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Z

    .line 4018
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    .line 4021
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->r()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/widget/x;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/x;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->d:Landroid/support/v4/widget/x;

    .line 4022
    return-void
.end method

.method private a(F)F
    .locals 4
    .parameter

    .prologue
    .line 4177
    const/high16 v0, 0x3f00

    sub-float v0, p1, v0

    .line 4178
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 4179
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b(IIII)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x3f80

    .line 4183
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4184
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4185
    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    .line 4186
    :goto_0
    mul-int v1, p3, p3

    mul-int v4, p4, p4

    add-int/2addr v1, v4

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 4187
    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 4188
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 4189
    :goto_1
    div-int/lit8 v6, v1, 0x2

    .line 4190
    int-to-float v5, v5

    mul-float/2addr v5, v8

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 4191
    int-to-float v7, v6

    int-to-float v6, v6

    invoke-direct {p0, v5}, Landroid/support/v7/widget/RecyclerView$t;->a(F)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 4195
    if-lez v4, :cond_2

    .line 4196
    const/high16 v0, 0x447a

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 4201
    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 4185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4188
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_1

    .line 4198
    :cond_2
    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    int-to-float v0, v0

    .line 4199
    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    const/high16 v1, 0x4396

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v3

    .line 4198
    goto :goto_3
.end method

.method private c()V
    .locals 1

    .prologue
    .line 4140
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    .line 4141
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Z

    .line 4142
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 4145
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Z

    .line 4146
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    if-eqz v0, :cond_0

    .line 4147
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->a()V

    .line 4149
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 4152
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Z

    if-eqz v0, :cond_0

    .line 4153
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    .line 4158
    :goto_0
    return-void

    .line 4155
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4156
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x8000

    const/4 v1, 0x0

    .line 4161
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4162
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$t;->c:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$t;->b:I

    .line 4163
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->d:Landroid/support/v4/widget/x;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/x;->a(IIIIIIII)V

    .line 4165
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->a()V

    .line 4166
    return-void
.end method

.method public a(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4205
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->r()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$t;->a(IIILandroid/view/animation/Interpolator;)V

    .line 4206
    return-void
.end method

.method public a(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4173
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$t;->b(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$t;->a(III)V

    .line 4174
    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 4209
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 4210
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/view/animation/Interpolator;

    .line 4211
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/x;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/x;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->d:Landroid/support/v4/widget/x;

    .line 4213
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4214
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$t;->c:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$t;->b:I

    .line 4215
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->d:Landroid/support/v4/widget/x;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/x;->a(IIIII)V

    .line 4216
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->a()V

    .line 4217
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 4220
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4221
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->d:Landroid/support/v4/widget/x;

    invoke-virtual {v0}, Landroid/support/v4/widget/x;->h()V

    .line 4222
    return-void
.end method

.method public b(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4169
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$t;->a(IIII)V

    .line 4170
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    .line 4026
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v0, :cond_0

    .line 4027
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->b()V

    .line 4137
    :goto_0
    return-void

    .line 4030
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$t;->c()V

    .line 4031
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;)V

    .line 4034
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$t;->d:Landroid/support/v4/widget/x;

    .line 4035
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/RecyclerView$q;

    .line 4036
    invoke-virtual {v7}, Landroid/support/v4/widget/x;->g()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4037
    invoke-virtual {v7}, Landroid/support/v4/widget/x;->b()I

    move-result v9

    .line 4038
    invoke-virtual {v7}, Landroid/support/v4/widget/x;->c()I

    move-result v10

    .line 4039
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$t;->b:I

    sub-int v11, v9, v0

    .line 4040
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$t;->c:I

    sub-int v12, v10, v0

    .line 4041
    const/4 v3, 0x0

    .line 4042
    const/4 v1, 0x0

    .line 4043
    iput v9, p0, Landroid/support/v7/widget/RecyclerView$t;->b:I

    .line 4044
    iput v10, p0, Landroid/support/v7/widget/RecyclerView$t;->c:I

    .line 4045
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 4046
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 4047
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 4048
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)V

    .line 4049
    const-string v4, "RV Scroll"

    invoke-static {v4}, Landroid/support/v4/os/g;->a(Ljava/lang/String;)V

    .line 4050
    if-eqz v11, :cond_1

    .line 4051
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v2, v11, v3, v4}, Landroid/support/v7/widget/RecyclerView$h;->a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v3

    .line 4052
    sub-int v2, v11, v3

    .line 4054
    :cond_1
    if-eqz v12, :cond_2

    .line 4055
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, v12, v1, v4}, Landroid/support/v7/widget/RecyclerView$h;->b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v1

    .line 4056
    sub-int v0, v12, v1

    .line 4058
    :cond_2
    invoke-static {}, Landroid/support/v4/os/g;->a()V

    .line 4059
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)V

    .line 4061
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/support/v7/widget/RecyclerView;)V

    .line 4062
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 4064
    if-eqz v8, :cond_16

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$q;->g()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$q;->h()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 4066
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v4

    .line 4067
    if-nez v4, :cond_14

    .line 4068
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$q;->f()V

    move v14, v2

    move v2, v1

    move v1, v14

    .line 4077
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4078
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4080
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v4/view/ah;->a(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 4082
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4, v11, v12}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 4084
    :cond_4
    if-nez v1, :cond_5

    if-eqz v0, :cond_a

    .line 4085
    :cond_5
    invoke-virtual {v7}, Landroid/support/v4/widget/x;->f()F

    move-result v4

    float-to-int v5, v4

    .line 4087
    const/4 v4, 0x0

    .line 4088
    if-eq v1, v9, :cond_1f

    .line 4089
    if-gez v1, :cond_17

    neg-int v4, v5

    :goto_2
    move v6, v4

    .line 4092
    :goto_3
    const/4 v4, 0x0

    .line 4093
    if-eq v0, v10, :cond_1e

    .line 4094
    if-gez v0, :cond_19

    neg-int v5, v5

    .line 4097
    :cond_6
    :goto_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v4/view/ah;->a(Landroid/view/View;)I

    move-result v4

    const/4 v13, 0x2

    if-eq v4, v13, :cond_7

    .line 4099
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v6, v5}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    .line 4101
    :cond_7
    if-nez v6, :cond_8

    if-eq v1, v9, :cond_8

    invoke-virtual {v7}, Landroid/support/v4/widget/x;->d()I

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    if-nez v5, :cond_9

    if-eq v0, v10, :cond_9

    invoke-virtual {v7}, Landroid/support/v4/widget/x;->e()I

    move-result v0

    if-nez v0, :cond_a

    .line 4103
    :cond_9
    invoke-virtual {v7}, Landroid/support/v4/widget/x;->h()V

    .line 4106
    :cond_a
    if-nez v3, :cond_b

    if-eqz v2, :cond_c

    .line 4107
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/RecyclerView;->g(II)V

    .line 4110
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->k(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 4111
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4114
    :cond_d
    if-eqz v12, :cond_1a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->g()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-ne v2, v12, :cond_1a

    const/4 v0, 0x1

    move v1, v0

    .line 4116
    :goto_5
    if-eqz v11, :cond_1b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-ne v3, v11, :cond_1b

    const/4 v0, 0x1

    .line 4118
    :goto_6
    if-nez v11, :cond_e

    if-eqz v12, :cond_f

    :cond_e
    if-nez v0, :cond_f

    if-eqz v1, :cond_1c

    :cond_f
    const/4 v0, 0x1

    .line 4121
    :goto_7
    invoke-virtual {v7}, Landroid/support/v4/widget/x;->a()Z

    move-result v1

    if-nez v1, :cond_10

    if-nez v0, :cond_1d

    .line 4122
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4128
    :cond_11
    :goto_8
    if-eqz v8, :cond_13

    .line 4129
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$q;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4130
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v8, v0, v1}, Landroid/support/v7/widget/RecyclerView$q;->a(Landroid/support/v7/widget/RecyclerView$q;II)V

    .line 4132
    :cond_12
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    if-nez v0, :cond_13

    .line 4133
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$q;->f()V

    .line 4136
    :cond_13
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$t;->d()V

    goto/16 :goto_0

    .line 4069
    :cond_14
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$q;->i()I

    move-result v5

    if-lt v5, v4, :cond_15

    .line 4070
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v8, v4}, Landroid/support/v7/widget/RecyclerView$q;->d(I)V

    .line 4071
    sub-int v4, v11, v2

    sub-int v5, v12, v0

    invoke-static {v8, v4, v5}, Landroid/support/v7/widget/RecyclerView$q;->a(Landroid/support/v7/widget/RecyclerView$q;II)V

    move v14, v2

    move v2, v1

    move v1, v14

    goto/16 :goto_1

    .line 4073
    :cond_15
    sub-int v4, v11, v2

    sub-int v5, v12, v0

    invoke-static {v8, v4, v5}, Landroid/support/v7/widget/RecyclerView$q;->a(Landroid/support/v7/widget/RecyclerView$q;II)V

    :cond_16
    move v14, v2

    move v2, v1

    move v1, v14

    goto/16 :goto_1

    .line 4089
    :cond_17
    if-lez v1, :cond_18

    move v4, v5

    goto/16 :goto_2

    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 4094
    :cond_19
    if-gtz v0, :cond_6

    const/4 v5, 0x0

    goto/16 :goto_4

    .line 4114
    :cond_1a
    const/4 v0, 0x0

    move v1, v0

    goto :goto_5

    .line 4116
    :cond_1b
    const/4 v0, 0x0

    goto :goto_6

    .line 4118
    :cond_1c
    const/4 v0, 0x0

    goto :goto_7

    .line 4124
    :cond_1d
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->a()V

    goto :goto_8

    :cond_1e
    move v5, v4

    goto/16 :goto_4

    :cond_1f
    move v6, v4

    goto/16 :goto_3
.end method
