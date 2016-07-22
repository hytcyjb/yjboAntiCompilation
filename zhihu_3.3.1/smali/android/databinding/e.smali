.class public Landroid/databinding/e;
.super Ljava/lang/Object;
.source "DataBindingUtil.java"


# static fields
.field private static a:Landroid/databinding/c;

.field private static b:Landroid/databinding/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Landroid/databinding/c;

    invoke-direct {v0}, Landroid/databinding/c;-><init>()V

    sput-object v0, Landroid/databinding/e;->a:Landroid/databinding/c;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Landroid/databinding/e;->b:Landroid/databinding/d;

    return-void
.end method

.method public static a(Landroid/app/Activity;I)Landroid/databinding/m;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/m;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 261
    sget-object v0, Landroid/databinding/e;->b:Landroid/databinding/d;

    invoke-static {p0, p1, v0}, Landroid/databinding/e;->a(Landroid/app/Activity;ILandroid/databinding/d;)Landroid/databinding/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;ILandroid/databinding/d;)Landroid/databinding/m;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/m;",
            ">(",
            "Landroid/app/Activity;",
            "I",
            "Landroid/databinding/d;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 278
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 279
    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p1}, Landroid/databinding/e;->a(Landroid/databinding/d;Landroid/view/ViewGroup;II)Landroid/databinding/m;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/databinding/d;Landroid/view/View;I)Landroid/databinding/m;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/m;",
            ">(",
            "Landroid/databinding/d;",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 185
    sget-object v0, Landroid/databinding/e;->a:Landroid/databinding/c;

    invoke-virtual {v0, p0, p1, p2}, Landroid/databinding/c;->a(Landroid/databinding/d;Landroid/view/View;I)Landroid/databinding/m;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/databinding/d;Landroid/view/ViewGroup;II)Landroid/databinding/m;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/m;",
            ">(",
            "Landroid/databinding/d;",
            "Landroid/view/ViewGroup;",
            "II)TT;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 296
    sub-int v1, v0, p2

    .line 297
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 298
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 299
    invoke-static {p0, v0, p3}, Landroid/databinding/e;->a(Landroid/databinding/d;Landroid/view/View;I)Landroid/databinding/m;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    .line 301
    :cond_0
    new-array v2, v1, [Landroid/view/View;

    .line 302
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 303
    add-int v3, v0, p2

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 305
    :cond_1
    invoke-static {p0, v2, p3}, Landroid/databinding/e;->a(Landroid/databinding/d;[Landroid/view/View;I)Landroid/databinding/m;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Landroid/databinding/d;[Landroid/view/View;I)Landroid/databinding/m;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/m;",
            ">(",
            "Landroid/databinding/d;",
            "[",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 180
    sget-object v0, Landroid/databinding/e;->a:Landroid/databinding/c;

    invoke-virtual {v0, p0, p1, p2}, Landroid/databinding/c;->a(Landroid/databinding/d;[Landroid/view/View;I)Landroid/databinding/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/m;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 88
    sget-object v0, Landroid/databinding/e;->b:Landroid/databinding/d;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/d;)Landroid/databinding/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/d;)Landroid/databinding/m;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/m;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z",
            "Landroid/databinding/d;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 114
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    .line 115
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 116
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 117
    if-eqz v1, :cond_2

    .line 118
    invoke-static {p4, p2, v0, p1}, Landroid/databinding/e;->a(Landroid/databinding/d;Landroid/view/ViewGroup;II)Landroid/databinding/m;

    move-result-object v0

    .line 120
    :goto_1
    return-object v0

    :cond_1
    move v1, v0

    .line 114
    goto :goto_0

    .line 120
    :cond_2
    invoke-static {p4, v2, p1}, Landroid/databinding/e;->a(Landroid/databinding/d;Landroid/view/View;I)Landroid/databinding/m;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Landroid/view/View;)Landroid/databinding/m;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/m;",
            ">(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Landroid/databinding/e;->b:Landroid/databinding/d;

    invoke-static {p0, v0}, Landroid/databinding/e;->a(Landroid/view/View;Landroid/databinding/d;)Landroid/databinding/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;Landroid/databinding/d;)Landroid/databinding/m;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/m;",
            ">(",
            "Landroid/view/View;",
            "Landroid/databinding/d;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {p0}, Landroid/databinding/e;->b(Landroid/view/View;)Landroid/databinding/m;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-object v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 165
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View is not a binding layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 169
    sget-object v1, Landroid/databinding/e;->a:Landroid/databinding/c;

    invoke-virtual {v1, v0}, Landroid/databinding/c;->a(Ljava/lang/String;)I

    move-result v0

    .line 170
    if-nez v0, :cond_2

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View is not a binding layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2
    sget-object v1, Landroid/databinding/e;->a:Landroid/databinding/c;

    invoke-virtual {v1, p1, p0, v0}, Landroid/databinding/c;->a(Landroid/databinding/d;Landroid/view/View;I)Landroid/databinding/m;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)Landroid/databinding/m;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/m;",
            ">(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {p0}, Landroid/databinding/m;->b(Landroid/view/View;)Landroid/databinding/m;

    move-result-object v0

    return-object v0
.end method
