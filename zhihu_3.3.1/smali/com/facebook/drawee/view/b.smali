.class public Lcom/facebook/drawee/view/b;
.super Ljava/lang/Object;
.source "DraweeHolder.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DH::",
        "Lcom/facebook/drawee/d/b;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/drawable/q;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/facebook/drawee/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDH;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/drawee/d/a;

.field private final g:Lcom/facebook/common/a/a;

.field private final h:Lcom/facebook/drawee/components/DraweeEventTracker;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/d/b;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    .line 54
    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->b:Z

    .line 55
    iput-boolean v1, p0, Lcom/facebook/drawee/view/b;->c:Z

    .line 56
    iput-boolean v1, p0, Lcom/facebook/drawee/view/b;->d:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/d/a;

    .line 60
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker;

    invoke-direct {v0}, Lcom/facebook/drawee/components/DraweeEventTracker;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/view/b;->h:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/b;->a(Lcom/facebook/drawee/d/b;)V

    .line 95
    :cond_0
    new-instance v0, Lcom/facebook/drawee/view/b$1;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/view/b$1;-><init>(Lcom/facebook/drawee/view/b;)V

    iput-object v0, p0, Lcom/facebook/drawee/view/b;->g:Lcom/facebook/common/a/a;

    .line 106
    return-void
.end method

.method public static a(Lcom/facebook/drawee/d/b;Landroid/content/Context;)Lcom/facebook/drawee/view/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DH::",
            "Lcom/facebook/drawee/d/b;",
            ">(TDH;",
            "Landroid/content/Context;",
            ")",
            "Lcom/facebook/drawee/view/b",
            "<TDH;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/facebook/drawee/view/b;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/view/b;-><init>(Lcom/facebook/drawee/d/b;)V

    .line 74
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/b;->a(Landroid/content/Context;)V

    .line 75
    return-object v0
.end method

.method private a(Lcom/facebook/drawee/drawable/q;)V
    .locals 2
    .parameter

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/facebook/drawee/view/b;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    instance-of v1, v0, Lcom/facebook/drawee/drawable/p;

    if-eqz v1, :cond_0

    .line 186
    check-cast v0, Lcom/facebook/drawee/drawable/p;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/drawable/p;->a(Lcom/facebook/drawee/drawable/q;)V

    .line 188
    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->h:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_ATTACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    .line 274
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/d/a;

    .line 275
    invoke-interface {v0}, Lcom/facebook/drawee/d/a;->f()Lcom/facebook/drawee/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/d/a;

    invoke-interface {v0}, Lcom/facebook/drawee/d/a;->g()V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->h:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DETACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    .line 286
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/d/a;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/d/a;

    invoke-interface {v0}, Lcom/facebook/drawee/d/a;->h()V

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->d:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->g()V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->h()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 163
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 168
    :cond_0
    const-class v0, Lcom/facebook/drawee/components/DraweeEventTracker;

    const-string v1, "%x: Draw requested for a non-attached controller %x. %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 171
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/d/a;

    .line 172
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    .line 173
    invoke-virtual {p0}, Lcom/facebook/drawee/view/b;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 168
    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iput-boolean v5, p0, Lcom/facebook/drawee/view/b;->b:Z

    .line 175
    iput-boolean v5, p0, Lcom/facebook/drawee/view/b;->c:Z

    .line 176
    iput-boolean v5, p0, Lcom/facebook/drawee/view/b;->d:Z

    .line 177
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->i()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    return-void
.end method

.method public a(Lcom/facebook/drawee/d/a;)V
    .locals 3
    .parameter

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->h()V

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/d/a;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/facebook/drawee/view/b;->h:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_OLD_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 211
    iget-object v1, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/d/a;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/facebook/drawee/d/a;->a(Lcom/facebook/drawee/d/b;)V

    .line 213
    :cond_1
    iput-object p1, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/d/a;

    .line 214
    iget-object v1, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/d/a;

    if-eqz v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/facebook/drawee/view/b;->h:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 216
    iget-object v1, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/d/a;

    iget-object v2, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/d/b;

    invoke-interface {v1, v2}, Lcom/facebook/drawee/d/a;->a(Lcom/facebook/drawee/d/b;)V

    .line 221
    :goto_0
    if-eqz v0, :cond_2

    .line 222
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->g()V

    .line 224
    :cond_2
    return-void

    .line 218
    :cond_3
    iget-object v1, p0, Lcom/facebook/drawee/view/b;->h:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    goto :goto_0
.end method

.method public a(Lcom/facebook/drawee/d/b;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->h:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/drawee/view/b;->a(Lcom/facebook/drawee/drawable/q;)V

    .line 239
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/d/b;

    iput-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/d/b;

    .line 240
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/d/b;

    invoke-interface {v0}, Lcom/facebook/drawee/d/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/view/b;->a(Z)V

    .line 241
    invoke-direct {p0, p0}, Lcom/facebook/drawee/view/b;->a(Lcom/facebook/drawee/drawable/q;)V

    .line 242
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/d/a;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/d/a;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/d/a;->a(Lcom/facebook/drawee/d/b;)V

    .line 245
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->c:Z

    if-ne v0, p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/view/b;->h:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DRAWABLE_SHOW:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 153
    iput-boolean p1, p0, Lcom/facebook/drawee/view/b;->c:Z

    .line 154
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->i()V

    goto :goto_0

    .line 152
    :cond_1
    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DRAWABLE_HIDE:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/d/a;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/d/a;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/d/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->h:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_HOLDER_ATTACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->b:Z

    .line 117
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->i()V

    .line 118
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->h:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_HOLDER_DETACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->b:Z

    .line 129
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->i()V

    .line 130
    return-void
.end method

.method public d()Lcom/facebook/drawee/d/a;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/d/a;

    return-object v0
.end method

.method public e()Lcom/facebook/drawee/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDH;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/d/b;

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/d/b;

    return-object v0
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/d/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lcom/facebook/drawee/d/b;

    invoke-interface {v0}, Lcom/facebook/drawee/d/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 301
    invoke-static {p0}, Lcom/facebook/common/internal/f;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    const-string v1, "controllerAttached"

    iget-boolean v2, p0, Lcom/facebook/drawee/view/b;->a:Z

    .line 302
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/f$a;->a(Ljava/lang/String;Z)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    const-string v1, "holderAttached"

    iget-boolean v2, p0, Lcom/facebook/drawee/view/b;->b:Z

    .line 303
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/f$a;->a(Ljava/lang/String;Z)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    const-string v1, "drawableVisible"

    iget-boolean v2, p0, Lcom/facebook/drawee/view/b;->c:Z

    .line 304
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/f$a;->a(Ljava/lang/String;Z)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    const-string v1, "activityStarted"

    iget-boolean v2, p0, Lcom/facebook/drawee/view/b;->d:Z

    .line 305
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/f$a;->a(Ljava/lang/String;Z)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    const-string v1, "events"

    iget-object v2, p0, Lcom/facebook/drawee/view/b;->h:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 306
    invoke-virtual {v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/facebook/common/internal/f$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
