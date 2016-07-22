.class final Lcom/crashlytics/android/core/t$c;
.super Lcom/crashlytics/android/core/t$j;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/a/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 465
    const/4 v0, 0x2

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/crashlytics/android/core/t$j;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/t$j;-><init>(I[Lcom/crashlytics/android/core/t$j;)V

    .line 466
    iget-object v0, p1, Lcom/crashlytics/android/core/a/a/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/t$c;->a:Ljava/lang/String;

    .line 467
    iget-object v0, p1, Lcom/crashlytics/android/core/a/a/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/t$c;->b:Ljava/lang/String;

    .line 468
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 472
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/core/t$c;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->b(ILcom/crashlytics/android/core/b;)I

    move-result v1

    .line 473
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/crashlytics/android/core/t$c;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lcom/crashlytics/android/core/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/b;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->b(ILcom/crashlytics/android/core/b;)I

    move-result v0

    add-int/2addr v0, v1

    .line 475
    return v0

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/t$c;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 480
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/core/t$c;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->a(ILcom/crashlytics/android/core/b;)V

    .line 481
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/crashlytics/android/core/t$c;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lcom/crashlytics/android/core/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/b;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->a(ILcom/crashlytics/android/core/b;)V

    .line 482
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/t$c;->b:Ljava/lang/String;

    goto :goto_0
.end method
