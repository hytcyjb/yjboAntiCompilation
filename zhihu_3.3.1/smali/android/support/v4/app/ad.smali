.class public Landroid/support/v4/app/ad;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ad$a;,
        Landroid/support/v4/app/ad$f;,
        Landroid/support/v4/app/ad$c;,
        Landroid/support/v4/app/ad$b;,
        Landroid/support/v4/app/ad$p;,
        Landroid/support/v4/app/ad$d;,
        Landroid/support/v4/app/ad$i;,
        Landroid/support/v4/app/ad$h;,
        Landroid/support/v4/app/ad$o;,
        Landroid/support/v4/app/ad$n;,
        Landroid/support/v4/app/ad$m;,
        Landroid/support/v4/app/ad$l;,
        Landroid/support/v4/app/ad$k;,
        Landroid/support/v4/app/ad$j;,
        Landroid/support/v4/app/ad$e;,
        Landroid/support/v4/app/ad$g;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/app/ad$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 828
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 829
    new-instance v0, Landroid/support/v4/app/ad$i;

    invoke-direct {v0}, Landroid/support/v4/app/ad$i;-><init>()V

    sput-object v0, Landroid/support/v4/app/ad;->a:Landroid/support/v4/app/ad$g;

    .line 845
    :goto_0
    return-void

    .line 830
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 831
    new-instance v0, Landroid/support/v4/app/ad$h;

    invoke-direct {v0}, Landroid/support/v4/app/ad$h;-><init>()V

    sput-object v0, Landroid/support/v4/app/ad;->a:Landroid/support/v4/app/ad$g;

    goto :goto_0

    .line 832
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 833
    new-instance v0, Landroid/support/v4/app/ad$o;

    invoke-direct {v0}, Landroid/support/v4/app/ad$o;-><init>()V

    sput-object v0, Landroid/support/v4/app/ad;->a:Landroid/support/v4/app/ad$g;

    goto :goto_0

    .line 834
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 835
    new-instance v0, Landroid/support/v4/app/ad$n;

    invoke-direct {v0}, Landroid/support/v4/app/ad$n;-><init>()V

    sput-object v0, Landroid/support/v4/app/ad;->a:Landroid/support/v4/app/ad$g;

    goto :goto_0

    .line 836
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 837
    new-instance v0, Landroid/support/v4/app/ad$m;

    invoke-direct {v0}, Landroid/support/v4/app/ad$m;-><init>()V

    sput-object v0, Landroid/support/v4/app/ad;->a:Landroid/support/v4/app/ad$g;

    goto :goto_0

    .line 838
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 839
    new-instance v0, Landroid/support/v4/app/ad$l;

    invoke-direct {v0}, Landroid/support/v4/app/ad$l;-><init>()V

    sput-object v0, Landroid/support/v4/app/ad;->a:Landroid/support/v4/app/ad$g;

    goto :goto_0

    .line 840
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    .line 841
    new-instance v0, Landroid/support/v4/app/ad$k;

    invoke-direct {v0}, Landroid/support/v4/app/ad$k;-><init>()V

    sput-object v0, Landroid/support/v4/app/ad;->a:Landroid/support/v4/app/ad$g;

    goto :goto_0

    .line 843
    :cond_6
    new-instance v0, Landroid/support/v4/app/ad$j;

    invoke-direct {v0}, Landroid/support/v4/app/ad$j;-><init>()V

    sput-object v0, Landroid/support/v4/app/ad;->a:Landroid/support/v4/app/ad$g;

    goto :goto_0
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 3288
    sget-object v0, Landroid/support/v4/app/ad;->a:Landroid/support/v4/app/ad$g;

    invoke-interface {v0, p0}, Landroid/support/v4/app/ad$g;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Landroid/support/v4/app/ad$g;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/support/v4/app/ad;->a:Landroid/support/v4/app/ad$g;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/app/ab;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-static {p0, p1}, Landroid/support/v4/app/ad;->b(Landroid/support/v4/app/ab;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/ac;Landroid/support/v4/app/ad$p;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-static {p0, p1}, Landroid/support/v4/app/ad;->b(Landroid/support/v4/app/ac;Landroid/support/v4/app/ad$p;)V

    return-void
.end method

.method private static b(Landroid/support/v4/app/ab;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/ab;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/ad$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 792
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ad$a;

    .line 793
    invoke-interface {p0, v0}, Landroid/support/v4/app/ab;->a(Landroid/support/v4/app/ag$a;)V

    goto :goto_0

    .line 795
    :cond_0
    return-void
.end method

.method private static b(Landroid/support/v4/app/ac;Landroid/support/v4/app/ad$p;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 799
    if-eqz p1, :cond_0

    .line 800
    instance-of v0, p1, Landroid/support/v4/app/ad$c;

    if-eqz v0, :cond_1

    .line 801
    check-cast p1, Landroid/support/v4/app/ad$c;

    .line 802
    iget-object v0, p1, Landroid/support/v4/app/ad$c;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/ad$c;->g:Z

    iget-object v2, p1, Landroid/support/v4/app/ad$c;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ad$c;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/ak;->a(Landroid/support/v4/app/ac;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    instance-of v0, p1, Landroid/support/v4/app/ad$f;

    if-eqz v0, :cond_2

    .line 808
    check-cast p1, Landroid/support/v4/app/ad$f;

    .line 809
    iget-object v0, p1, Landroid/support/v4/app/ad$f;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/ad$f;->g:Z

    iget-object v2, p1, Landroid/support/v4/app/ad$f;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ad$f;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/ak;->a(Landroid/support/v4/app/ac;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 814
    :cond_2
    instance-of v0, p1, Landroid/support/v4/app/ad$b;

    if-eqz v0, :cond_0

    .line 815
    check-cast p1, Landroid/support/v4/app/ad$b;

    .line 816
    iget-object v1, p1, Landroid/support/v4/app/ad$b;->e:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Landroid/support/v4/app/ad$b;->g:Z

    iget-object v3, p1, Landroid/support/v4/app/ad$b;->f:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/ad$b;->a:Landroid/graphics/Bitmap;

    iget-object v5, p1, Landroid/support/v4/app/ad$b;->b:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Landroid/support/v4/app/ad$b;->c:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/app/ak;->a(Landroid/support/v4/app/ac;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
