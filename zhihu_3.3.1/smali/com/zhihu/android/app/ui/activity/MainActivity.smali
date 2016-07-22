.class public Lcom/zhihu/android/app/ui/activity/MainActivity;
.super Lcom/zhihu/android/app/ui/activity/a;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$f;
.implements Lcom/zhihu/android/app/e/b;
.implements Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment$a;
.implements Lcom/zhihu/android/base/util/i$a;


# instance fields
.field private m:Lcom/zhihu/android/a/a;

.field private n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

.field private o:Landroid/support/v4/widget/DrawerLayout;

.field private p:Lcom/zhihu/android/base/util/i;

.field private q:Lcom/zhihu/android/api/model/NotificationBadge;

.field private r:Lcom/zhihu/android/api/b/z;

.field private s:Lcom/zhihu/android/api/b/e;

.field private t:Lcom/zhihu/android/api/b/y;

.field private u:Lcom/zhihu/android/bumblebee/http/e;

.field private v:Lcom/zhihu/android/api/model/AppConfig;

.field private w:Landroid/content/Intent;

.field private x:Lcom/zhihu/android/app/util/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/a;-><init>()V

    return-void
.end method

.method private B()V
    .locals 2

    .prologue
    .line 354
    const-string v0, "myapp"

    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "myapp"

    const-string v1, "beta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    :cond_0
    new-instance v0, Lcom/zhihu/android/app/util/q;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/util/q;-><init>(Lcom/zhihu/android/app/ui/activity/a;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->x:Lcom/zhihu/android/app/util/q;

    .line 357
    :cond_1
    return-void
.end method

.method private C()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->x:Lcom/zhihu/android/app/util/q;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->x:Lcom/zhihu/android/app/util/q;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/zhihu/android/app/util/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 363
    :cond_0
    return-void
.end method

.method private D()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method private E()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method private F()V
    .locals 7

    .prologue
    .line 374
    const-string v0, "myapp"

    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "myapp"

    const-string v1, "beta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v5, "myapp"

    .line 375
    :goto_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->s:Lcom/zhihu/android/api/b/e;

    const-string v1, "android"

    const-string v2, "3.3.1"

    const/16 v3, 0x136

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-instance v6, Lcom/zhihu/android/app/ui/activity/MainActivity$1;

    invoke-direct {v6, p0}, Lcom/zhihu/android/app/ui/activity/MainActivity$1;-><init>(Lcom/zhihu/android/app/ui/activity/MainActivity;)V

    invoke-interface/range {v0 .. v6}, Lcom/zhihu/android/api/b/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->u:Lcom/zhihu/android/bumblebee/http/e;

    .line 388
    return-void

    .line 374
    :cond_1
    const-string v5, "release"

    goto :goto_0
.end method

.method private G()V
    .locals 2

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->f()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()I

    move-result v0

    if-gtz v0, :cond_1

    .line 625
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 627
    if-eqz v0, :cond_0

    const-class v1, Lcom/zhihu/android/app/ui/fragment/i;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/zhihu/android/app/ui/activity/b;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/i;->u()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 629
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a(I)V

    .line 636
    :goto_0
    return-void

    .line 631
    :cond_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->H()V

    goto :goto_0

    .line 634
    :cond_1
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->H()V

    goto :goto_0
.end method

.method private H()V
    .locals 1

    .prologue
    .line 640
    :try_start_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->f()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->moveTaskToBack(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a_()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private I()V
    .locals 2

    .prologue
    .line 722
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->r:Lcom/zhihu/android/api/b/z;

    if-nez v0, :cond_0

    .line 724
    const-class v0, Lcom/zhihu/android/api/b/z;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/z;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->r:Lcom/zhihu/android/api/b/z;

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->r:Lcom/zhihu/android/api/b/z;

    new-instance v1, Lcom/zhihu/android/app/ui/activity/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/activity/MainActivity$2;-><init>(Lcom/zhihu/android/app/ui/activity/MainActivity;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/z;->b(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 740
    :cond_1
    return-void
.end method

.method private J()V
    .locals 2

    .prologue
    .line 770
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->t:Lcom/zhihu/android/api/b/y;

    if-nez v0, :cond_0

    .line 772
    const-class v0, Lcom/zhihu/android/api/b/y;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/y;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->t:Lcom/zhihu/android/api/b/y;

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->t:Lcom/zhihu/android/api/b/y;

    new-instance v1, Lcom/zhihu/android/app/ui/activity/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/activity/MainActivity$3;-><init>(Lcom/zhihu/android/app/ui/activity/MainActivity;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/y;->a(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 788
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/activity/MainActivity;)Lcom/zhihu/android/api/model/AppConfig;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->v:Lcom/zhihu/android/api/model/AppConfig;

    return-object v0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/activity/MainActivity;Lcom/zhihu/android/api/model/AppConfig;)Lcom/zhihu/android/api/model/AppConfig;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->v:Lcom/zhihu/android/api/model/AppConfig;

    return-object p1
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/activity/MainActivity;Lcom/zhihu/android/api/model/NotificationBadge;)Lcom/zhihu/android/api/model/NotificationBadge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->q:Lcom/zhihu/android/api/model/NotificationBadge;

    return-object p1
.end method

.method private a(Lcom/zhihu/android/api/model/AppConfig;)V
    .locals 2
    .parameter

    .prologue
    .line 395
    if-nez p1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p1, Lcom/zhihu/android/api/model/AppConfig;->appVersion:Lcom/zhihu/android/api/model/AppVersion;

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p1, Lcom/zhihu/android/api/model/AppConfig;->appVersion:Lcom/zhihu/android/api/model/AppVersion;

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/c;->a(Landroid/content/Context;Lcom/zhihu/android/api/model/AppVersion;)V

    .line 404
    :cond_2
    iget-object v0, p1, Lcom/zhihu/android/api/model/AppConfig;->announcement:Lcom/zhihu/android/api/model/Announcement;

    if-eqz v0, :cond_3

    .line 405
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    iget-object v1, p1, Lcom/zhihu/android/api/model/AppConfig;->announcement:Lcom/zhihu/android/api/model/Announcement;

    invoke-virtual {v0, v1}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 408
    :cond_3
    iget-object v0, p1, Lcom/zhihu/android/api/model/AppConfig;->config:Lcom/zhihu/android/api/model/Config;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/AppConfig;->config:Lcom/zhihu/android/api/model/Config;

    iget-byte v0, v0, Lcom/zhihu/android/api/model/Config;->enableFoolEggs:B

    if-lez v0, :cond_0

    .line 410
    const v0, 0x7f02018f

    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(I)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->l()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 412
    invoke-static {}, Lcom/facebook/drawee/a/a/a;->c()Lcom/facebook/imagepipeline/d/c;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/facebook/imagepipeline/d/c;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/b;

    goto :goto_0
.end method

.method private a(Lcom/zhihu/android/api/model/People;)V
    .locals 3
    .parameter

    .prologue
    .line 743
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    :try_start_0
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v0

    .line 747
    invoke-virtual {v0}, Lcom/zhihu/android/app/a/a;->e()Lcom/zhihu/android/api/model/People;

    move-result-object v1

    .line 748
    iget-object v2, p1, Lcom/zhihu/android/api/model/People;->avatarUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/zhihu/android/api/model/People;->avatarUrl:Ljava/lang/String;

    .line 749
    iget-object v2, p1, Lcom/zhihu/android/api/model/People;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/zhihu/android/api/model/People;->name:Ljava/lang/String;

    .line 750
    iget-object v2, p1, Lcom/zhihu/android/api/model/People;->headline:Ljava/lang/String;

    iput-object v2, v1, Lcom/zhihu/android/api/model/People;->headline:Ljava/lang/String;

    .line 751
    iget-object v2, p1, Lcom/zhihu/android/api/model/People;->description:Ljava/lang/String;

    iput-object v2, v1, Lcom/zhihu/android/api/model/People;->description:Ljava/lang/String;

    .line 752
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/a/b;->a(Lcom/zhihu/android/app/a/a;)V

    .line 753
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/af;->c(Landroid/content/Context;Z)V

    .line 754
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->g()V

    .line 756
    iget-boolean v0, p1, Lcom/zhihu/android/api/model/People;->isLocked:Z

    if-eqz v0, :cond_0

    .line 757
    const-string v0, "http://www.zhihu.com/antispam/unblock"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/p;->b(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p1, Lcom/zhihu/android/api/model/People;->isActive:Z

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/af;->d(Landroid/content/Context;Z)V

    .line 767
    :cond_1
    return-void

    .line 760
    :catch_0
    move-exception v0

    .line 761
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/activity/MainActivity;Lcom/zhihu/android/api/model/People;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/api/model/People;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;
    .locals 3
    .parameter

    .prologue
    .line 155
    instance-of v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    if-eqz v0, :cond_0

    .line 156
    check-cast p0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    return-object p0

    .line 158
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

    const-string v2, " is not MainActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/view/View;)Lcom/zhihu/android/app/ui/activity/MainActivity;
    .locals 3
    .parameter

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 163
    instance-of v0, v1, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 164
    check-cast v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 169
    :cond_0
    invoke-static {v1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/activity/MainActivity;Lcom/zhihu/android/api/model/AppConfig;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/api/model/AppConfig;)V

    return-void
.end method

.method private d(Landroid/content/Intent;)Z
    .locals 1
    .parameter

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/t;->a(Lcom/zhihu/android/app/ui/activity/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    .line 348
    :cond_0
    iput-object p1, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->w:Landroid/content/Intent;

    .line 349
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 663
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_0

    .line 666
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 668
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/ui/fragment/d;

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/fragment/d;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/fragment/d;->c(I)V

    .line 443
    :cond_0
    return-void
.end method

.method public a(Landroid/nfc/NdefRecord;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 652
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 654
    if-eqz v0, :cond_0

    .line 655
    new-instance v1, Landroid/nfc/NdefMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 657
    new-array v2, v3, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 659
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/ui/fragment/d;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/fragment/d;

    invoke-virtual {v0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/d;->a(Landroid/view/View;F)V

    .line 421
    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 546
    if-eqz p1, :cond_2

    .line 547
    if-nez p2, :cond_0

    invoke-static {p0}, Lcom/zhihu/android/app/util/af;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->p:Lcom/zhihu/android/base/util/i;

    invoke-virtual {v0, p0, p0}, Lcom/zhihu/android/base/util/i;->a(Landroid/content/Context;Lcom/zhihu/android/base/util/i$a;)V

    .line 553
    :cond_1
    :goto_0
    return-void

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->p:Lcom/zhihu/android/base/util/i;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/util/i;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public answerToastEvent(Lcom/zhihu/android/app/util/at$a;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 582
    if-nez p1, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v0, p1, Lcom/zhihu/android/app/util/at$a;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 586
    iget v0, p1, Lcom/zhihu/android/app/util/at$a;->b:I

    if-nez v0, :cond_2

    .line 587
    iget-object v0, p1, Lcom/zhihu/android/app/util/at$a;->c:Ljava/lang/CharSequence;

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 588
    :cond_2
    iget v0, p1, Lcom/zhihu/android/app/util/at$a;->b:I

    if-ne v0, v1, :cond_0

    .line 589
    iget-object v0, p1, Lcom/zhihu/android/app/util/at$a;->c:Ljava/lang/CharSequence;

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/at;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 591
    :cond_3
    iget v0, p1, Lcom/zhihu/android/app/util/at$a;->a:I

    if-lez v0, :cond_0

    .line 592
    iget v0, p1, Lcom/zhihu/android/app/util/at$a;->b:I

    if-nez v0, :cond_5

    .line 593
    iget-object v0, p1, Lcom/zhihu/android/app/util/at$a;->d:[Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 594
    iget v0, p1, Lcom/zhihu/android/app/util/at$a;->a:I

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 596
    :cond_4
    iget v0, p1, Lcom/zhihu/android/app/util/at$a;->a:I

    iget-object v1, p1, Lcom/zhihu/android/app/util/at$a;->d:[Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 598
    :cond_5
    iget v0, p1, Lcom/zhihu/android/app/util/at$a;->b:I

    if-ne v0, v1, :cond_0

    .line 599
    iget-object v0, p1, Lcom/zhihu/android/app/util/at$a;->d:[Ljava/lang/Object;

    if-nez v0, :cond_6

    .line 600
    iget v0, p1, Lcom/zhihu/android/app/util/at$a;->a:I

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/at;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 602
    :cond_6
    iget v0, p1, Lcom/zhihu/android/app/util/at$a;->a:I

    iget-object v1, p1, Lcom/zhihu/android/app/util/at$a;->d:[Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/at;->b(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 512
    if-eqz p1, :cond_1

    .line 513
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->w:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->w:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->c(Landroid/content/Intent;)V

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->w:Landroid/content/Intent;

    .line 524
    :goto_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a()V

    .line 525
    return-void

    .line 517
    :cond_0
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/i;->u()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 518
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a(I)V

    goto :goto_0

    .line 521
    :cond_1
    invoke-static {}, Lcom/zhihu/android/app/ui/activity/b;->a()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0
.end method

.method public c(Landroid/content/Intent;)V
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x2

    .line 281
    if-nez p1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 286
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 287
    const-string v0, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/preference/g;->h()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 333
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_push"

    const-class v2, Lcom/zhihu/android/api/model/Push;

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/api/model/ZHObject;->unpackFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Push;

    .line 335
    if-eqz v0, :cond_0

    .line 336
    iget-object v1, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->t:Lcom/zhihu/android/api/b/y;

    if-nez v1, :cond_3

    .line 337
    const-class v1, Lcom/zhihu/android/api/b/y;

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhihu/android/api/b/y;

    iput-object v1, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->t:Lcom/zhihu/android/api/b/y;

    .line 339
    :cond_3
    iget-object v1, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->t:Lcom/zhihu/android/api/b/y;

    iget-wide v2, v0, Lcom/zhihu/android/api/model/Push;->sendAt:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/Push;->getPushTypeForMark()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/zhihu/android/api/model/Push;->pushId:Ljava/lang/String;

    new-instance v9, Lcom/zhihu/android/app/util/n;

    invoke-direct {v9}, Lcom/zhihu/android/app/util/n;-><init>()V

    invoke-interface/range {v1 .. v9}, Lcom/zhihu/android/api/b/y;->a(JJILjava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0

    .line 290
    :cond_4
    const-string v1, "com.zhihu.intent.action.FRAGMENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 291
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_2

    .line 293
    const-string v1, "intent_extra_fragment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    const-string v2, "intent_extra_arguments"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 295
    const-string v3, "intent_extra_tag"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 296
    const-string v4, "intent_extra_clear_stack"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 299
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 300
    new-instance v4, Lcom/zhihu/android/app/util/bb;

    invoke-direct {v4, v1, v2, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v4, v0}, Lcom/zhihu/android/app/util/bb;->a(Z)V

    .line 302
    invoke-virtual {p0, v4}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 304
    const-class v0, Lcom/zhihu/android/app/ui/fragment/c/b;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a(I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 311
    :cond_5
    const-string v1, "zhihu.intent.action.OPEN_URL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 312
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 314
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/p;->a(Landroid/content/Context;Landroid/net/Uri;Z)Z

    .line 316
    :cond_6
    invoke-static {}, Lcom/zhihu/android/app/push/b;->a()Lcom/zhihu/android/app/push/b;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Lcom/zhihu/android/app/push/b;->a(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 317
    :cond_7
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 318
    :cond_8
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->d(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 319
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/p;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    goto/16 :goto_1

    .line 321
    :cond_9
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->d(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 324
    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 325
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 326
    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/search/b;->b(Ljava/lang/String;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/util/bb;)V

    goto/16 :goto_1

    .line 324
    :cond_a
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 328
    :cond_b
    const v0, 0x7f0902de

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;I)V

    goto/16 :goto_1
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 536
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(ZZ)V

    .line 537
    return-void
.end method

.method public d(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 447
    packed-switch p1, :pswitch_data_0

    .line 508
    :goto_0
    :pswitch_0
    return-void

    .line 449
    :pswitch_1
    invoke-static {v0, v0, v0}, Lcom/zhihu/android/app/ui/dialog/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/app/ui/dialog/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->f()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_register"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/j;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :pswitch_2
    invoke-static {v0, v0, v0, v1}, Lcom/zhihu/android/app/ui/dialog/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/zhihu/android/app/ui/dialog/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->f()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_login"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/g;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zhihu/android/app/ui/activity/WeChatOauthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 459
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zhihu/android/app/ui/activity/SinaOauthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 463
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zhihu/android/app/ui/activity/QQConnOauthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 467
    :pswitch_6
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/i;->u()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 468
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a(I)V

    goto :goto_0

    .line 471
    :pswitch_7
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/g/d;->e()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 472
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a(I)V

    goto :goto_0

    .line 475
    :pswitch_8
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/h/e;->e()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 476
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a(I)V

    goto :goto_0

    .line 479
    :pswitch_9
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/d/d;->u()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 480
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a(I)V

    goto :goto_0

    .line 483
    :pswitch_a
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/c/b;->u()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 484
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a(I)V

    goto :goto_0

    .line 487
    :pswitch_b
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/n/f;->u()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 488
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a(I)V

    goto/16 :goto_0

    .line 491
    :pswitch_c
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/preference/h;->h()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 492
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->t()V

    goto/16 :goto_0

    .line 495
    :pswitch_d
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/j/a;->u()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 496
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->t()V

    goto/16 :goto_0

    .line 499
    :pswitch_e
    invoke-static {}, Lcom/zhihu/android/app/util/ar;->a()Lcom/zhihu/android/app/util/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/util/ar;->a(Landroid/content/Context;)I

    move-result v0

    .line 500
    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 501
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(IZ)Z

    .line 502
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->t()V

    .line 503
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->y()V

    goto/16 :goto_0

    :cond_0
    move v0, v1

    .line 500
    goto :goto_1

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_e
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public e(I)V
    .locals 3
    .parameter

    .prologue
    .line 529
    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    .line 530
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->c(Z)V

    .line 531
    new-instance v0, Lcom/zhihu/android/app/ui/dialog/d;

    invoke-direct {v0}, Lcom/zhihu/android/app/ui/dialog/d;-><init>()V

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->f()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "feedback"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/d;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 533
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->e()V

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/e/a;

    if-eqz v0, :cond_2

    .line 613
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/e/a;

    invoke-interface {v0}, Lcom/zhihu/android/app/e/a;->k_()Z

    move-result v0

    .line 615
    if-nez v0, :cond_0

    .line 616
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->G()V

    goto :goto_0

    .line 619
    :cond_2
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->G()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 174
    invoke-static {}, Lcom/zhihu/android/app/util/ar;->a()Lcom/zhihu/android/app/util/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/util/ar;->a(Landroid/content/Context;)I

    move-result v0

    .line 175
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f0d0222

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->setTheme(I)V

    .line 177
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->D()V

    .line 181
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->B()V

    .line 183
    new-instance v0, Lcom/zhihu/android/api/model/NotificationBadge;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/NotificationBadge;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->q:Lcom/zhihu/android/api/model/NotificationBadge;

    .line 185
    const v0, 0x7f04001a

    invoke-static {p0, v0}, Landroid/databinding/e;->a(Landroid/app/Activity;I)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/a;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->m:Lcom/zhihu/android/a/a;

    .line 187
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->f()Landroid/support/v4/app/p;

    move-result-object v0

    const v1, 0x7f1000b3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    .line 189
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a(Landroid/support/v4/widget/DrawerLayout$f;)V

    .line 191
    const v0, 0x7f1000b2

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->o:Landroid/support/v4/widget/DrawerLayout;

    .line 193
    new-instance v0, Lcom/zhihu/android/base/util/i;

    invoke-direct {v0}, Lcom/zhihu/android/base/util/i;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->p:Lcom/zhihu/android/base/util/i;

    .line 195
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->I()V

    .line 197
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 198
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->J()V

    .line 200
    return-void

    .line 175
    :cond_0
    const v0, 0x7f0d0223

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lcom/zhihu/android/app/ui/activity/a;->onDestroy()V

    .line 256
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 257
    invoke-static {p0}, Lcom/zhihu/android/app/push/NotificationWebSocketService;->b(Landroid/content/Context;)V

    .line 259
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->C()V

    .line 261
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->E()V

    .line 263
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->u:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->u:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 267
    :cond_0
    invoke-static {p0}, Lcom/zhihu/android/app/draft/a;->a(Landroid/content/Context;)V

    .line 268
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/ui/fragment/d;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/fragment/d;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/fragment/d;->b(Landroid/view/View;)V

    .line 436
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/s;->a(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 426
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/ui/fragment/d;

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/fragment/d;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/fragment/d;->a(Landroid/view/View;)V

    .line 429
    :cond_0
    return-void
.end method

.method public onMessageCountChangedEvent(Lcom/zhihu/android/app/d/j;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 678
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/j;->a()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 679
    iget-object v1, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->q:Lcom/zhihu/android/api/model/NotificationBadge;

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->q:Lcom/zhihu/android/api/model/NotificationBadge;

    iget-wide v2, v0, Lcom/zhihu/android/api/model/NotificationBadge;->newMessagesCount:J

    iput-wide v2, v1, Lcom/zhihu/android/api/model/NotificationBadge;->newMessagesCount:J

    .line 684
    :goto_0
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/d/k;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->q:Lcom/zhihu/android/api/model/NotificationBadge;

    invoke-direct {v1, v2}, Lcom/zhihu/android/app/d/k;-><init>(Lcom/zhihu/android/api/model/NotificationBadge;)V

    invoke-virtual {v0, v1}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 685
    return-void

    .line 682
    :cond_0
    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->q:Lcom/zhihu/android/api/model/NotificationBadge;

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/activity/a;->onNewIntent(Landroid/content/Intent;)V

    .line 273
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->c(Landroid/content/Intent;)V

    .line 274
    return-void
.end method

.method public onNotificationBadgeChangedEvent(Lcom/zhihu/android/app/d/k;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 672
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/k;->a()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->q:Lcom/zhihu/android/api/model/NotificationBadge;

    .line 673
    const-string v0, "onNotificationBadgeChangedEvent"

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method public onNotificationReadEvent(Lcom/zhihu/android/app/d/l;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 689
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->q:Lcom/zhihu/android/api/model/NotificationBadge;

    if-nez v0, :cond_0

    .line 704
    :goto_0
    return-void

    .line 692
    :cond_0
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/l;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 703
    :goto_1
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/d/k;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->q:Lcom/zhihu/android/api/model/NotificationBadge;

    invoke-direct {v1, v2}, Lcom/zhihu/android/app/d/k;-><init>(Lcom/zhihu/android/api/model/NotificationBadge;)V

    invoke-virtual {v0, v1}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 694
    :pswitch_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->q:Lcom/zhihu/android/api/model/NotificationBadge;

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/NotificationBadge;->readContent()V

    goto :goto_1

    .line 697
    :pswitch_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->q:Lcom/zhihu/android/api/model/NotificationBadge;

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/NotificationBadge;->readFollow()V

    goto :goto_1

    .line 700
    :pswitch_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->q:Lcom/zhihu/android/api/model/NotificationBadge;

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/NotificationBadge;->readLike()V

    goto :goto_1

    .line 692
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Lcom/zhihu/android/app/ui/activity/a;->onPause()V

    .line 245
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->p:Lcom/zhihu/android/base/util/i;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/util/i;->a(Landroid/content/Context;)V

    .line 246
    invoke-static {p0}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->n()V

    .line 251
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/activity/a;->onPostCreate(Landroid/os/Bundle;)V

    .line 206
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    const v1, 0x7f1000b3

    iget-object v2, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->m:Lcom/zhihu/android/a/a;

    iget-object v2, v2, Lcom/zhihu/android/a/a;->e:Lcom/zhihu/android/base/widget/ZHDrawerLayout;

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a(ILandroid/support/v4/widget/DrawerLayout;)V

    .line 208
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->m:Lcom/zhihu/android/a/a;

    iget-object v0, v0, Lcom/zhihu/android/a/a;->d:Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->setVisibility(I)V

    .line 210
    if-nez p1, :cond_0

    .line 212
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    invoke-static {}, Lcom/zhihu/android/app/ui/activity/b;->a()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 220
    :goto_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->c(Landroid/content/Intent;)V

    .line 223
    :cond_0
    const-class v0, Lcom/zhihu/android/api/b/e;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/e;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->s:Lcom/zhihu/android/api/b/e;

    .line 225
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->F()V

    .line 226
    return-void

    .line 217
    :cond_1
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/i;->u()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0
.end method

.method public onProfileUpdatedEvent(Lcom/zhihu/android/app/ui/fragment/l/d$a;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 709
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/fragment/l/d$a;->a()Lcom/zhihu/android/api/model/People;

    move-result-object v0

    if-nez v0, :cond_0

    .line 711
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->I()V

    .line 715
    :goto_0
    return-void

    .line 713
    :cond_0
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/fragment/l/d$a;->a()Lcom/zhihu/android/api/model/People;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/api/model/People;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lcom/zhihu/android/app/ui/activity/a;->onResume()V

    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->c(Z)V

    .line 233
    invoke-static {p0}, Lcom/zhihu/android/app/push/NotificationWebSocketService;->a(Landroid/content/Context;)V

    .line 234
    invoke-static {p0}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->o()V

    .line 239
    :cond_0
    return-void
.end method

.method public q()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->m:Lcom/zhihu/android/a/a;

    iget-object v0, v0, Lcom/zhihu/android/a/a;->c:Lcom/zhihu/android/base/widget/ZHScrimInsetsFrameLayout;

    return-object v0
.end method

.method public r()Lcom/zhihu/android/api/model/AppConfig;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->v:Lcom/zhihu/android/api/model/AppConfig;

    return-object v0
.end method

.method public s()V
    .locals 2

    .prologue
    .line 556
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    .line 557
    iget-object v1, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a(Z)V

    .line 558
    return-void
.end method

.method public t()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->e()V

    .line 562
    return-void
.end method

.method public u()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->n:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->f()V

    .line 566
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->o:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 574
    return-void
.end method

.method public w()V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->o:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 578
    return-void
.end method

.method public x()Lcom/zhihu/android/api/model/NotificationBadge;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;->q:Lcom/zhihu/android/api/model/NotificationBadge;

    return-object v0
.end method

.method public y()V
    .locals 3

    .prologue
    .line 791
    invoke-static {p0}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    :goto_0
    return-void

    .line 794
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f09026e

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zhihu/android/app/ui/activity/MainActivity$4;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/activity/MainActivity$4;-><init>(Lcom/zhihu/android/app/ui/activity/MainActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/zhihu/android/app/util/u;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
