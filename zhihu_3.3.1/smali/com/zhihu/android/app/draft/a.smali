.class public Lcom/zhihu/android/app/draft/a;
.super Ljava/lang/Object;
.source "RealmHelper.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zhihu/android/app/draft/RealmProvider;->a(Landroid/content/Context;I)Lio/realm/k;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/zhihu/android/app/draft/a$1;

    invoke-direct {v1}, Lcom/zhihu/android/app/draft/a$1;-><init>()V

    new-instance v2, Lcom/zhihu/android/app/draft/a$9;

    invoke-direct {v2, v0}, Lcom/zhihu/android/app/draft/a$9;-><init>(Lio/realm/k;)V

    new-instance v3, Lcom/zhihu/android/app/draft/a$15;

    invoke-direct {v3, v0}, Lcom/zhihu/android/app/draft/a$15;-><init>(Lio/realm/k;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/k;->a(Lio/realm/k$a;Lio/realm/k$a$b;Lio/realm/k$a$a;)Lio/realm/l;

    .line 69
    return-void
.end method

.method public static a(Lio/realm/k;Lcom/zhihu/android/app/draft/a/b;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    new-instance v0, Lcom/zhihu/android/app/draft/a$5;

    invoke-direct {v0, p1}, Lcom/zhihu/android/app/draft/a$5;-><init>(Lcom/zhihu/android/app/draft/a/b;)V

    new-instance v1, Lcom/zhihu/android/app/draft/a$6;

    invoke-direct {v1, p2, p0}, Lcom/zhihu/android/app/draft/a$6;-><init>(ZLio/realm/k;)V

    new-instance v2, Lcom/zhihu/android/app/draft/a$7;

    invoke-direct {v2, p2, p0}, Lcom/zhihu/android/app/draft/a$7;-><init>(ZLio/realm/k;)V

    invoke-virtual {p0, v0, v1, v2}, Lio/realm/k;->a(Lio/realm/k$a;Lio/realm/k$a$b;Lio/realm/k$a$a;)Lio/realm/l;

    .line 229
    return-void
.end method

.method public static a(Lio/realm/k;Lcom/zhihu/android/app/draft/a/c;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    new-instance v0, Lcom/zhihu/android/app/draft/a$8;

    invoke-direct {v0, p1}, Lcom/zhihu/android/app/draft/a$8;-><init>(Lcom/zhihu/android/app/draft/a/c;)V

    new-instance v1, Lcom/zhihu/android/app/draft/a$10;

    invoke-direct {v1, p2, p0}, Lcom/zhihu/android/app/draft/a$10;-><init>(ZLio/realm/k;)V

    new-instance v2, Lcom/zhihu/android/app/draft/a$11;

    invoke-direct {v2, p2, p0}, Lcom/zhihu/android/app/draft/a$11;-><init>(ZLio/realm/k;)V

    invoke-virtual {p0, v0, v1, v2}, Lio/realm/k;->a(Lio/realm/k$a;Lio/realm/k$a$b;Lio/realm/k$a$a;)Lio/realm/l;

    .line 276
    return-void
.end method

.method public static a(Lio/realm/k;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 289
    new-instance v0, Lcom/zhihu/android/app/draft/a$12;

    invoke-direct {v0, p1}, Lcom/zhihu/android/app/draft/a$12;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/zhihu/android/app/draft/a$13;

    invoke-direct {v1, p2, p0}, Lcom/zhihu/android/app/draft/a$13;-><init>(ZLio/realm/k;)V

    new-instance v2, Lcom/zhihu/android/app/draft/a$14;

    invoke-direct {v2, p2, p0}, Lcom/zhihu/android/app/draft/a$14;-><init>(ZLio/realm/k;)V

    invoke-virtual {p0, v0, v1, v2}, Lio/realm/k;->a(Lio/realm/k$a;Lio/realm/k$a$b;Lio/realm/k$a$a;)Lio/realm/l;

    .line 315
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zhihu/android/app/draft/RealmProvider;->a(Landroid/content/Context;I)Lio/realm/k;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/zhihu/android/app/draft/a$16;

    invoke-direct {v1}, Lcom/zhihu/android/app/draft/a$16;-><init>()V

    new-instance v2, Lcom/zhihu/android/app/draft/a$17;

    invoke-direct {v2, v0}, Lcom/zhihu/android/app/draft/a$17;-><init>(Lio/realm/k;)V

    new-instance v3, Lcom/zhihu/android/app/draft/a$18;

    invoke-direct {v3, v0}, Lcom/zhihu/android/app/draft/a$18;-><init>(Lio/realm/k;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/k;->a(Lio/realm/k$a;Lio/realm/k$a$b;Lio/realm/k$a$a;)Lio/realm/l;

    .line 96
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/zhihu/android/app/draft/RealmProvider;->a(Landroid/content/Context;I)Lio/realm/k;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/zhihu/android/app/draft/a$19;

    invoke-direct {v1}, Lcom/zhihu/android/app/draft/a$19;-><init>()V

    new-instance v2, Lcom/zhihu/android/app/draft/a$20;

    invoke-direct {v2, v0}, Lcom/zhihu/android/app/draft/a$20;-><init>(Lio/realm/k;)V

    new-instance v3, Lcom/zhihu/android/app/draft/a$21;

    invoke-direct {v3, v0}, Lcom/zhihu/android/app/draft/a$21;-><init>(Lio/realm/k;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/k;->a(Lio/realm/k$a;Lio/realm/k$a$b;Lio/realm/k$a$a;)Lio/realm/l;

    .line 117
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/zhihu/android/app/draft/RealmProvider;->a(Landroid/content/Context;I)Lio/realm/k;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/zhihu/android/app/draft/a$2;

    invoke-direct {v1}, Lcom/zhihu/android/app/draft/a$2;-><init>()V

    new-instance v2, Lcom/zhihu/android/app/draft/a$3;

    invoke-direct {v2, v0}, Lcom/zhihu/android/app/draft/a$3;-><init>(Lio/realm/k;)V

    new-instance v3, Lcom/zhihu/android/app/draft/a$4;

    invoke-direct {v3, v0}, Lcom/zhihu/android/app/draft/a$4;-><init>(Lio/realm/k;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/k;->a(Lio/realm/k$a;Lio/realm/k$a$b;Lio/realm/k$a$a;)Lio/realm/l;

    .line 137
    return-void
.end method
