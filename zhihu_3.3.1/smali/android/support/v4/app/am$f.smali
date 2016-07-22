.class Landroid/support/v4/app/am$f;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"

# interfaces
.implements Landroid/support/v4/app/am$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Ljava/lang/String;

.field final d:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput-object p1, p0, Landroid/support/v4/app/am$f;->a:Ljava/lang/String;

    .line 569
    iput p2, p0, Landroid/support/v4/app/am$f;->b:I

    .line 570
    iput-object p3, p0, Landroid/support/v4/app/am$f;->c:Ljava/lang/String;

    .line 571
    iput-object p4, p0, Landroid/support/v4/app/am$f;->d:Landroid/app/Notification;

    .line 572
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/v;)V
    .locals 4
    .parameter

    .prologue
    .line 576
    iget-object v0, p0, Landroid/support/v4/app/am$f;->a:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/app/am$f;->b:I

    iget-object v2, p0, Landroid/support/v4/app/am$f;->c:Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/app/am$f;->d:Landroid/app/Notification;

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/support/v4/app/v;->a(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    .line 577
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotifyTask["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 581
    const-string v1, "packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/am$f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/app/am$f;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    const-string v1, ", tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/am$f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
