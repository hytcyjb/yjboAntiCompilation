.class final Lcom/crashlytics/android/core/t$b;
.super Lcom/crashlytics/android/core/t$j;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/a/a/a;)V
    .locals 2
    .parameter

    .prologue
    .line 426
    const/4 v0, 0x4

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/crashlytics/android/core/t$j;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/t$j;-><init>(I[Lcom/crashlytics/android/core/t$j;)V

    .line 427
    iget-wide v0, p1, Lcom/crashlytics/android/core/a/a/a;->a:J

    iput-wide v0, p0, Lcom/crashlytics/android/core/t$b;->a:J

    .line 428
    iget-wide v0, p1, Lcom/crashlytics/android/core/a/a/a;->b:J

    iput-wide v0, p0, Lcom/crashlytics/android/core/t$b;->b:J

    .line 429
    iget-object v0, p1, Lcom/crashlytics/android/core/a/a/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/t$b;->c:Ljava/lang/String;

    .line 430
    iget-object v0, p1, Lcom/crashlytics/android/core/a/a/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/t$b;->d:Ljava/lang/String;

    .line 431
    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .prologue
    .line 435
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/crashlytics/android/core/t$b;->a:J

    invoke-static {v0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->b(IJ)I

    move-result v0

    .line 436
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/crashlytics/android/core/t$b;->b:J

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->b(IJ)I

    move-result v1

    .line 437
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/crashlytics/android/core/t$b;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/crashlytics/android/core/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/b;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->b(ILcom/crashlytics/android/core/b;)I

    move-result v2

    .line 439
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/crashlytics/android/core/t$b;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/crashlytics/android/core/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/b;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->b(ILcom/crashlytics/android/core/b;)I

    move-result v3

    .line 442
    add-int/2addr v0, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0
.end method

.method public a(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .locals 4
    .parameter

    .prologue
    .line 447
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/crashlytics/android/core/t$b;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->a(IJ)V

    .line 448
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/crashlytics/android/core/t$b;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->a(IJ)V

    .line 449
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/crashlytics/android/core/t$b;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->a(ILcom/crashlytics/android/core/b;)V

    .line 450
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/crashlytics/android/core/t$b;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->a(ILcom/crashlytics/android/core/b;)V

    .line 451
    return-void
.end method
