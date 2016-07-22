.class public abstract Lcom/zhihu/android/app/ui/activity/a;
.super Lcom/zhihu/android/base/b;
.source "BaseActivity.java"

# interfaces
.implements Lcom/zhihu/android/bumblebee/http/f;


# static fields
.field private static n:I


# instance fields
.field private m:Landroid/view/ActionMode;

.field private o:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    sput v0, Lcom/zhihu/android/app/ui/activity/a;->n:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/zhihu/android/base/b;-><init>()V

    .line 286
    new-instance v0, Lcom/zhihu/android/app/ui/activity/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zhihu/android/app/ui/activity/a$1;-><init>(Lcom/zhihu/android/app/ui/activity/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/a;->o:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/a;
    .locals 3
    .parameter

    .prologue
    .line 64
    instance-of v0, p0, Lcom/zhihu/android/app/ui/activity/a;

    if-eqz v0, :cond_0

    .line 65
    check-cast p0, Lcom/zhihu/android/app/ui/activity/a;

    return-object p0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not BaseActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/view/View;)Lcom/zhihu/android/app/ui/activity/a;
    .locals 3
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 72
    instance-of v0, v1, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 73
    check-cast v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/zhihu/android/app/ui/activity/a;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 78
    :cond_0
    invoke-static {v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(I)I
    .locals 0
    .parameter

    .prologue
    .line 57
    sput p0, Lcom/zhihu/android/app/ui/activity/a;->n:I

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {p0}, Lcom/zhihu/android/app/ZhihuApplication;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ZhihuApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ZhihuApplication;->a()Lcom/zhihu/android/bumblebee/http/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhihu/android/bumblebee/http/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->f()Landroid/support/v4/app/p;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I)Z

    .line 197
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->f()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/t;

    move-result-object v1

    .line 198
    const/16 v0, 0x1001

    invoke-virtual {v1, v0}, Landroid/support/v4/app/t;->a(I)Landroid/support/v4/app/t;

    .line 200
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->f()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->e()Ljava/util/List;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 203
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    invoke-virtual {v1, v0}, Landroid/support/v4/app/t;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/t;

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->f()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_3

    .line 211
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    invoke-virtual {v1, v0}, Landroid/support/v4/app/t;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/t;

    .line 218
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/app/t;->b()I

    .line 219
    return-void

    .line 215
    :cond_3
    const v0, 0x7f100006

    invoke-virtual {v1, v0, p1, p2}, Landroid/support/v4/app/t;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/t;

    goto :goto_1
.end method

.method protected a(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f100006

    const v1, 0x7f05001a

    .line 222
    if-eqz p4, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->f()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()Z

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->f()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/t;

    move-result-object v0

    .line 227
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/support/v4/app/t;->a(IIII)Landroid/support/v4/app/t;

    .line 228
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/t;->a(I)Landroid/support/v4/app/t;

    .line 229
    if-eqz p3, :cond_1

    .line 230
    invoke-virtual {v0, v2, p1, p2}, Landroid/support/v4/app/t;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/t;

    .line 240
    :goto_0
    invoke-virtual {v0, p2}, Landroid/support/v4/app/t;->a(Ljava/lang/String;)Landroid/support/v4/app/t;

    .line 241
    invoke-virtual {v0}, Landroid/support/v4/app/t;->b()I

    .line 242
    return-void

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->k()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_2

    .line 235
    invoke-virtual {v0, v1}, Landroid/support/v4/app/t;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/t;

    .line 238
    :cond_2
    invoke-virtual {v0, v2, p1, p2}, Landroid/support/v4/app/t;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/t;

    goto :goto_0
.end method

.method public a(Lcom/google/api/client/http/HttpResponse;)V
    .locals 4
    .parameter

    .prologue
    .line 131
    const/16 v0, 0x191

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/af;->l(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/t;->a(Lcom/zhihu/android/app/ui/activity/a;I)V

    .line 134
    :cond_1
    return-void
.end method

.method public a(Lcom/zhihu/android/app/util/bb;)V
    .locals 4
    .parameter

    .prologue
    .line 137
    if-nez p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->k()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/a;->m:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/a;->m:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 150
    :cond_3
    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 152
    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_4
    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->e()Z

    move-result v2

    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->f()Z

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zhihu/android/app/ui/activity/a;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public a(Lcom/zhihu/android/app/util/bb;Landroid/support/v4/app/Fragment;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    if-nez p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->k()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/a;->m:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/a;->m:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 173
    :cond_3
    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/app/Fragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 176
    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_4
    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/app/Fragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 180
    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->e()Z

    move-result v2

    invoke-virtual {p1}, Lcom/zhihu/android/app/util/bb;->f()Z

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zhihu/android/app/ui/activity/a;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method protected a(IZ)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 304
    invoke-static {}, Lcom/zhihu/android/app/util/ar;->a()Lcom/zhihu/android/app/util/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/util/ar;->a(Landroid/content/Context;)I

    move-result v0

    .line 305
    if-ne v0, p1, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    .line 308
    :cond_0
    if-eqz p2, :cond_1

    .line 309
    sput p1, Lcom/zhihu/android/app/ui/activity/a;->n:I

    .line 311
    :cond_1
    if-ne p1, v1, :cond_2

    const v0, 0x7f0d0223

    .line 314
    :goto_1
    invoke-static {}, Lcom/zhihu/android/app/util/ar;->a()Lcom/zhihu/android/app/util/ar;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/zhihu/android/app/util/ar;->a(Landroid/content/Context;I)V

    .line 315
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/a;->setTheme(I)V

    .line 316
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/a;->f(I)V

    .line 317
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    new-instance v2, Lcom/zhihu/android/app/d/m;

    invoke-direct {v2}, Lcom/zhihu/android/app/d/m;-><init>()V

    invoke-virtual {v0, v2}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    move v0, v1

    .line 318
    goto :goto_0

    .line 311
    :cond_2
    const v0, 0x7f0d0222

    goto :goto_1
.end method

.method protected b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zhihu/android/app/ui/activity/a;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v4/app/Fragment;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->k()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_1

    .line 188
    if-eq p1, v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-ne v2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 191
    :cond_1
    return v0
.end method

.method protected k()Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->f()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()I

    move-result v0

    .line 248
    if-lez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->f()Landroid/support/v4/app/p;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/p;->b(I)Landroid/support/v4/app/p$a;

    move-result-object v0

    .line 251
    invoke-interface {v0}, Landroid/support/v4/app/p$a;->c()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->f()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->f()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->e()Ljava/util/List;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 258
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 264
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->f()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()I

    move-result v0

    if-lez v0, :cond_0

    .line 274
    :try_start_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->f()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->finish()V

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected m()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0xd

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v1, 0x0

    .line 322
    invoke-static {p0}, Lcom/zhihu/android/app/util/af;->h(Landroid/content/Context;)Ljava/util/GregorianCalendar;

    move-result-object v2

    .line 323
    invoke-static {p0}, Lcom/zhihu/android/app/util/af;->i(Landroid/content/Context;)Ljava/util/GregorianCalendar;

    move-result-object v3

    .line 324
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 327
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 330
    invoke-static {v4, v2}, Lcom/zhihu/android/app/util/af;->a(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {v4, v3}, Lcom/zhihu/android/app/util/af;->a(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    if-gez v0, :cond_3

    .line 331
    :cond_0
    sget v0, Lcom/zhihu/android/app/ui/activity/a;->n:I

    const/4 v6, 0x2

    if-eq v0, v6, :cond_5

    .line 332
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/a;->b(I)Z

    move-result v0

    .line 334
    :goto_0
    invoke-virtual {v3, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    invoke-virtual {v4, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 335
    invoke-virtual {v3, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-virtual {v4, v8, v3}, Ljava/util/Calendar;->set(II)V

    .line 336
    invoke-virtual {v4, v9, v1}, Ljava/util/Calendar;->set(II)V

    .line 337
    invoke-virtual {v4, v9, v1}, Ljava/util/Calendar;->set(II)V

    .line 339
    invoke-virtual {v2, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-lt v5, v2, :cond_1

    .line 340
    const/4 v2, 0x5

    invoke-virtual {v4, v2, v10}, Ljava/util/Calendar;->add(II)V

    .line 342
    :cond_1
    iget-object v2, p0, Lcom/zhihu/android/app/ui/activity/a;->o:Landroid/os/Handler;

    const v3, 0x11111

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 343
    iget-object v3, p0, Lcom/zhihu/android/app/ui/activity/a;->o:Landroid/os/Handler;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v3, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 344
    const v2, 0x1020002

    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/activity/a;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090326

    invoke-static {v2, v3, v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    .line 357
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0b\u6b21\u5207\u6362\u4e3b\u9898\u65f6\u95f4:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 358
    if-eqz v0, :cond_2

    .line 359
    const v0, 0x7f090320

    new-instance v3, Lcom/zhihu/android/app/ui/activity/a$2;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/activity/a$2;-><init>(Lcom/zhihu/android/app/ui/activity/a;)V

    invoke-virtual {v2, v0, v3}, Landroid/support/design/widget/Snackbar;->a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 375
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/Snackbar;->a(I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    .line 376
    sput v1, Lcom/zhihu/android/app/ui/activity/a;->n:I

    .line 379
    :cond_2
    return-void

    .line 346
    :cond_3
    sget v0, Lcom/zhihu/android/app/ui/activity/a;->n:I

    if-eq v0, v10, :cond_4

    .line 347
    invoke-virtual {p0, v10}, Lcom/zhihu/android/app/ui/activity/a;->b(I)Z

    move-result v0

    .line 349
    :goto_2
    invoke-virtual {v2, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-virtual {v4, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 350
    invoke-virtual {v2, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v4, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 351
    invoke-virtual {v4, v9, v1}, Ljava/util/Calendar;->set(II)V

    .line 352
    invoke-virtual {v4, v9, v1}, Ljava/util/Calendar;->set(II)V

    .line 353
    iget-object v2, p0, Lcom/zhihu/android/app/ui/activity/a;->o:Landroid/os/Handler;

    const v3, 0x11111

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 354
    iget-object v3, p0, Lcom/zhihu/android/app/ui/activity/a;->o:Landroid/os/Handler;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v3, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 355
    const v2, 0x1020002

    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/activity/a;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090327

    invoke-static {v2, v3, v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method public n()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/a;->o:Landroid/os/Handler;

    const v1, 0x11111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    return-void
.end method

.method public o()V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/a;->o:Landroid/os/Handler;

    new-instance v1, Lcom/zhihu/android/app/ui/activity/a$3;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/activity/a$3;-><init>(Lcom/zhihu/android/app/ui/activity/a;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/zhihu/android/base/b;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/a;->m:Landroid/view/ActionMode;

    .line 115
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/zhihu/android/base/b;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 108
    iput-object p1, p0, Lcom/zhihu/android/app/ui/activity/a;->m:Landroid/view/ActionMode;

    .line 109
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 120
    :try_start_0
    invoke-super {p0}, Lcom/zhihu/android/base/b;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/zhihu/android/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget-boolean v0, Lcom/zhihu/android/base/util/SystemUtils;->j:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->j()Landroid/support/v7/app/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/h;->a(Z)V

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/zhihu/android/app/ZhihuApplication;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ZhihuApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ZhihuApplication;->a()Lcom/zhihu/android/bumblebee/http/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zhihu/android/bumblebee/http/a;->a(Lcom/zhihu/android/bumblebee/http/f;)V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 101
    invoke-static {p0}, Lcom/zhihu/android/app/ZhihuApplication;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ZhihuApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ZhihuApplication;->a()Lcom/zhihu/android/bumblebee/http/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zhihu/android/bumblebee/http/a;->b(Lcom/zhihu/android/bumblebee/http/f;)V

    .line 102
    invoke-super {p0}, Lcom/zhihu/android/base/b;->onDestroy()V

    .line 103
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/zhihu/android/base/b;->onPostCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/a;->o:Landroid/os/Handler;

    const v1, 0x11111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 398
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->m()V

    .line 399
    return-void
.end method
