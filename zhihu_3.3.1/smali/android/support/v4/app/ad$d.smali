.class public Landroid/support/v4/app/ad$d;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field A:Landroid/app/Notification;

.field public B:Landroid/app/Notification;

.field public C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field public g:Landroid/graphics/Bitmap;

.field public h:Ljava/lang/CharSequence;

.field public i:I

.field j:I

.field k:Z

.field public l:Z

.field public m:Landroid/support/v4/app/ad$p;

.field public n:Ljava/lang/CharSequence;

.field o:I

.field p:I

.field q:Z

.field r:Ljava/lang/String;

.field s:Z

.field t:Ljava/lang/String;

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/ad$a;",
            ">;"
        }
    .end annotation
.end field

.field v:Z

.field w:Ljava/lang/String;

.field x:Landroid/os/Bundle;

.field y:I

.field z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ad$d;->k:Z

    .line 910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ad$d;->u:Ljava/util/ArrayList;

    .line 911
    iput-boolean v4, p0, Landroid/support/v4/app/ad$d;->v:Z

    .line 914
    iput v4, p0, Landroid/support/v4/app/ad$d;->y:I

    .line 915
    iput v4, p0, Landroid/support/v4/app/ad$d;->z:I

    .line 919
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ad$d;->B:Landroid/app/Notification;

    .line 934
    iput-object p1, p0, Landroid/support/v4/app/ad$d;->a:Landroid/content/Context;

    .line 937
    iget-object v0, p0, Landroid/support/v4/app/ad$d;->B:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 938
    iget-object v0, p0, Landroid/support/v4/app/ad$d;->B:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 939
    iput v4, p0, Landroid/support/v4/app/ad$d;->j:I

    .line 940
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ad$d;->C:Ljava/util/ArrayList;

    .line 941
    return-void
.end method

.method private a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1289
    if-eqz p2, :cond_0

    .line 1290
    iget-object v0, p0, Landroid/support/v4/app/ad$d;->B:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1294
    :goto_0
    return-void

    .line 1292
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ad$d;->B:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method protected static d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x1400

    .line 1570
    if-nez p0, :cond_1

    .line 1574
    :cond_0
    :goto_0
    return-object p0

    .line 1571
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1572
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1559
    invoke-static {}, Landroid/support/v4/app/ad;->a()Landroid/support/v4/app/ad$g;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/ad$d;->b()Landroid/support/v4/app/ad$e;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/support/v4/app/ad$g;->a(Landroid/support/v4/app/ad$d;Landroid/support/v4/app/ad$e;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/support/v4/app/ad$d;
    .locals 1
    .parameter

    .prologue
    .line 985
    iget-object v0, p0, Landroid/support/v4/app/ad$d;->B:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 986
    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/ad$d;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1459
    iget-object v0, p0, Landroid/support/v4/app/ad$d;->u:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v4/app/ad$a;

    invoke-direct {v1, p1, p2, p3}, Landroid/support/v4/app/ad$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1460
    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ad$d;
    .locals 0
    .parameter

    .prologue
    .line 1081
    iput-object p1, p0, Landroid/support/v4/app/ad$d;->d:Landroid/app/PendingIntent;

    .line 1082
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ad$d;
    .locals 0
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Landroid/support/v4/app/ad$d;->g:Landroid/graphics/Bitmap;

    .line 1146
    return-object p0
.end method

.method public a(Landroid/support/v4/app/ad$p;)Landroid/support/v4/app/ad$d;
    .locals 1
    .parameter

    .prologue
    .line 1491
    iget-object v0, p0, Landroid/support/v4/app/ad$d;->m:Landroid/support/v4/app/ad$p;

    if-eq v0, p1, :cond_0

    .line 1492
    iput-object p1, p0, Landroid/support/v4/app/ad$d;->m:Landroid/support/v4/app/ad$p;

    .line 1493
    iget-object v0, p0, Landroid/support/v4/app/ad$d;->m:Landroid/support/v4/app/ad$p;

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Landroid/support/v4/app/ad$d;->m:Landroid/support/v4/app/ad$p;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/ad$p;->a(Landroid/support/v4/app/ad$d;)V

    .line 1497
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ad$d;
    .locals 1
    .parameter

    .prologue
    .line 1009
    invoke-static {p1}, Landroid/support/v4/app/ad$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ad$d;->b:Ljava/lang/CharSequence;

    .line 1010
    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroid/support/v4/app/ad$d;
    .locals 0
    .parameter

    .prologue
    .line 1266
    iput-object p1, p0, Landroid/support/v4/app/ad$d;->w:Ljava/lang/String;

    .line 1267
    return-object p0
.end method

.method public a(Z)Landroid/support/v4/app/ad$d;
    .locals 1
    .parameter

    .prologue
    .line 1243
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ad$d;->a(IZ)V

    .line 1244
    return-object p0
.end method

.method public b(I)Landroid/support/v4/app/ad$d;
    .locals 0
    .parameter

    .prologue
    .line 1041
    iput p1, p0, Landroid/support/v4/app/ad$d;->i:I

    .line 1042
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ad$d;
    .locals 1
    .parameter

    .prologue
    .line 1017
    invoke-static {p1}, Landroid/support/v4/app/ad$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ad$d;->c:Ljava/lang/CharSequence;

    .line 1018
    return-object p0
.end method

.method public b(Ljava/lang/String;)Landroid/support/v4/app/ad$d;
    .locals 0
    .parameter

    .prologue
    .line 1357
    iput-object p1, p0, Landroid/support/v4/app/ad$d;->r:Ljava/lang/String;

    .line 1358
    return-object p0
.end method

.method public b(Z)Landroid/support/v4/app/ad$d;
    .locals 0
    .parameter

    .prologue
    .line 1369
    iput-boolean p1, p0, Landroid/support/v4/app/ad$d;->s:Z

    .line 1370
    return-object p0
.end method

.method protected b()Landroid/support/v4/app/ad$e;
    .locals 1

    .prologue
    .line 1566
    new-instance v0, Landroid/support/v4/app/ad$e;

    invoke-direct {v0}, Landroid/support/v4/app/ad$e;-><init>()V

    return-object v0
.end method

.method public c(I)Landroid/support/v4/app/ad$d;
    .locals 0
    .parameter

    .prologue
    .line 1508
    iput p1, p0, Landroid/support/v4/app/ad$d;->y:I

    .line 1509
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ad$d;
    .locals 1
    .parameter

    .prologue
    .line 1031
    invoke-static {p1}, Landroid/support/v4/app/ad$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ad$d;->n:Ljava/lang/CharSequence;

    .line 1032
    return-object p0
.end method
