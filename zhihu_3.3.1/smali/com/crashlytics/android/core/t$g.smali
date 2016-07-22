.class final Lcom/crashlytics/android/core/t$g;
.super Lcom/crashlytics/android/core/t$j;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/a/a/f$a;)V
    .locals 2
    .parameter

    .prologue
    .line 351
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/crashlytics/android/core/t$j;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/t$j;-><init>(I[Lcom/crashlytics/android/core/t$j;)V

    .line 352
    iget-wide v0, p1, Lcom/crashlytics/android/core/a/a/f$a;->a:J

    iput-wide v0, p0, Lcom/crashlytics/android/core/t$g;->a:J

    .line 353
    iget-object v0, p1, Lcom/crashlytics/android/core/a/a/f$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/t$g;->b:Ljava/lang/String;

    .line 354
    iget-object v0, p1, Lcom/crashlytics/android/core/a/a/f$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/t$g;->c:Ljava/lang/String;

    .line 355
    iget-wide v0, p1, Lcom/crashlytics/android/core/a/a/f$a;->d:J

    iput-wide v0, p0, Lcom/crashlytics/android/core/t$g;->d:J

    .line 356
    iget v0, p1, Lcom/crashlytics/android/core/a/a/f$a;->e:I

    iput v0, p0, Lcom/crashlytics/android/core/t$g;->e:I

    .line 357
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 361
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/crashlytics/android/core/t$g;->a:J

    invoke-static {v0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->b(IJ)I

    move-result v0

    .line 362
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/crashlytics/android/core/t$g;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/core/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->b(ILcom/crashlytics/android/core/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 363
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/crashlytics/android/core/t$g;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/core/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->b(ILcom/crashlytics/android/core/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 364
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/crashlytics/android/core/t$g;->d:J

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    const/4 v1, 0x5

    iget v2, p0, Lcom/crashlytics/android/core/t$g;->e:I

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 366
    return v0
.end method

.method public a(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .locals 4
    .parameter

    .prologue
    .line 371
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/crashlytics/android/core/t$g;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->a(IJ)V

    .line 372
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/crashlytics/android/core/t$g;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->a(ILcom/crashlytics/android/core/b;)V

    .line 373
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/crashlytics/android/core/t$g;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->a(ILcom/crashlytics/android/core/b;)V

    .line 374
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/crashlytics/android/core/t$g;->d:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->a(IJ)V

    .line 375
    const/4 v0, 0x5

    iget v1, p0, Lcom/crashlytics/android/core/t$g;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->a(II)V

    .line 376
    return-void
.end method
