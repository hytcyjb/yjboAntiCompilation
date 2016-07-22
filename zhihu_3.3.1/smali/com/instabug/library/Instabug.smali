.class public Lcom/instabug/library/Instabug;
.super Ljava/lang/Object;
.source "Instabug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/Instabug$a;,
        Lcom/instabug/library/Instabug$SdkThemeSource;,
        Lcom/instabug/library/Instabug$GestureMode;,
        Lcom/instabug/library/Instabug$IBGFloatingButtonEdge;,
        Lcom/instabug/library/Instabug$IBGInvocationMode;,
        Lcom/instabug/library/Instabug$IBGInvocationEvent;,
        Lcom/instabug/library/Instabug$SdkThemingMode;
    }
.end annotation


# static fields
.field public static a:Z

.field private static d:Lcom/instabug/library/Instabug;


# instance fields
.field private b:Lcom/instabug/library/g;

.field private c:Lcom/instabug/library/Instabug$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instabug/library/Instabug;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/instabug/library/g;)V
    .locals 1
    .parameter

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    .line 219
    new-instance v0, Lcom/instabug/library/Instabug$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/Instabug$a;-><init>(Lcom/instabug/library/Instabug;)V

    iput-object v0, p0, Lcom/instabug/library/Instabug;->c:Lcom/instabug/library/Instabug$a;

    .line 220
    return-void
.end method

.method public static a()Lcom/instabug/library/Instabug;
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/instabug/library/Instabug;->d:Lcom/instabug/library/Instabug;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Instabug.initialize() in your Application class first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    sget-object v0, Lcom/instabug/library/Instabug;->d:Lcom/instabug/library/Instabug;

    return-object v0
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;)Lcom/instabug/library/Instabug;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 161
    const-string v0, "Initializing Instabug SDK"

    invoke-static {v0}, Lcom/instabug/library/g/b;->a(Ljava/lang/String;)V

    .line 163
    if-nez p1, :cond_0

    .line 164
    const-string v0, "com.instabug.library"

    const-string v1, "Instabug application token couldn\'t be retrieved, please make sure you\'re initialize(Context,String) with a non-null token"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Instabug application token not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    new-instance v0, Lcom/instabug/library/g;

    new-instance v1, Lcom/instabug/library/internal/c/a;

    invoke-direct {v1, p0}, Lcom/instabug/library/internal/c/a;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/instabug/library/g;-><init>(Landroid/app/Application;Lcom/instabug/library/internal/c/a;Ljava/lang/String;)V

    .line 170
    new-instance v1, Lcom/instabug/library/Instabug;

    invoke-direct {v1, v0}, Lcom/instabug/library/Instabug;-><init>(Lcom/instabug/library/g;)V

    .line 172
    sput-object v1, Lcom/instabug/library/Instabug;->d:Lcom/instabug/library/Instabug;

    return-object v1
.end method

.method static synthetic a(Lcom/instabug/library/Instabug;)Lcom/instabug/library/g;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    return-object v0
.end method


# virtual methods
.method public a(IIIII)Lcom/instabug/library/Instabug;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/instabug/library/g;->a(IIIII)V

    .line 1210
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->C()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsetSdkStyleColors();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    return-object p0
.end method

.method public a(Lcom/instabug/library/Instabug$IBGInvocationEvent;)Lcom/instabug/library/Instabug;
    .locals 2
    .parameter

    .prologue
    .line 685
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0, p1}, Lcom/instabug/library/g;->a(Lcom/instabug/library/Instabug$IBGInvocationEvent;)V

    .line 686
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->C()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsetInvocationEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instabug/library/Instabug$IBGInvocationEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    return-object p0
.end method

.method public a(Lcom/instabug/library/Instabug$SdkThemingMode;Lcom/instabug/library/Instabug$SdkThemeSource;)Lcom/instabug/library/Instabug;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0, p1, p2}, Lcom/instabug/library/g;->a(Lcom/instabug/library/Instabug$SdkThemingMode;Lcom/instabug/library/Instabug$SdkThemeSource;)V

    .line 1250
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->C()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsetSdkThemingMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instabug/library/Instabug$SdkThemingMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/instabug/library/Instabug$SdkThemeSource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    return-object p0
.end method

.method public a(Z)Lcom/instabug/library/Instabug;
    .locals 2
    .parameter

    .prologue
    .line 812
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0, p1}, Lcom/instabug/library/g;->b(Z)V

    .line 813
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->C()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsetIsTrackingUserSteps("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    return-object p0
.end method

.method public a(ZZ)Lcom/instabug/library/Instabug;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 847
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0, p1, p2}, Lcom/instabug/library/g;->a(ZZ)V

    .line 848
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->C()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nenableEmailField("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    return-object p0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0, p1}, Lcom/instabug/library/g;->a(Landroid/app/Activity;)V

    .line 231
    return-void
.end method

.method public a(Landroid/app/Dialog;)V
    .locals 1
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0, p1}, Lcom/instabug/library/g;->a(Landroid/app/Dialog;)V

    .line 323
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 497
    invoke-static {p1}, Lcom/instabug/library/g/a;->a(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->C()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nlog();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/instabug/library/Instabug;
    .locals 2
    .parameter

    .prologue
    .line 654
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0, p1}, Lcom/instabug/library/g;->a(Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->C()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsetUserData(...);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    return-object p0
.end method

.method public b(Z)Lcom/instabug/library/Instabug;
    .locals 2
    .parameter

    .prologue
    .line 860
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0, p1}, Lcom/instabug/library/g;->a(Z)V

    .line 861
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->C()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsetCommentIsRequired("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    return-object p0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->e()V

    .line 460
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->C()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ninvokeBugReporter();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0, p1}, Lcom/instabug/library/g;->b(Landroid/app/Activity;)V

    .line 265
    return-void
.end method

.method public c(Z)Lcom/instabug/library/Instabug;
    .locals 2
    .parameter

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/t;->c(Z)V

    .line 1063
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->C()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsetIsTrackingCrashes("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    return-object p0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->f()V

    .line 471
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->C()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ninvokeFeedbackSender();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0, p1}, Lcom/instabug/library/g;->c(Landroid/app/Activity;)V

    .line 286
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 507
    invoke-static {}, Lcom/instabug/library/g/a;->b()V

    .line 508
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->C()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nclearLog();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 6
    .parameter

    .prologue
    .line 591
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/instabug/library/l;

    invoke-direct {v2, v0, p1}, Lcom/instabug/library/l;-><init>(Lcom/instabug/library/g;Landroid/app/Activity;)V

    const-wide/16 v4, 0x2ee

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 592
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->C()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nshowAnimatedTutorial();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/instabug/library/b/d$a;
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->l()Lcom/instabug/library/b/d$a;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->z()Z

    move-result v0

    return v0
.end method

.method j()Lcom/instabug/library/Instabug$a;
    .locals 1

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/instabug/library/Instabug;->c:Lcom/instabug/library/Instabug$a;

    return-object v0
.end method

.method public k()Lcom/instabug/library/t;
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/instabug/library/Instabug;->b:Lcom/instabug/library/g;

    invoke-virtual {v0}, Lcom/instabug/library/g;->j()Lcom/instabug/library/t;

    move-result-object v0

    return-object v0
.end method
