.class Landroid/support/v4/app/ad$h;
.super Landroid/support/v4/app/ad$o;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0}, Landroid/support/v4/app/ad$o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ad$d;Landroid/support/v4/app/ad$e;)Landroid/app/Notification;
    .locals 26
    .parameter
    .parameter

    .prologue
    .line 705
    new-instance v2, Landroid/support/v4/app/ae$a;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/ad$d;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/ad$d;->B:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/ad$d;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/ad$d;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/ad$d;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/support/v4/app/ad$d;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/support/v4/app/ad$d;->i:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/ad$d;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/ad$d;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/support/v4/app/ad$d;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/ad$d;->o:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/v4/app/ad$d;->p:I

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/ad$d;->q:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/ad$d;->k:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/ad$d;->l:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/ad$d;->j:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ad$d;->n:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/ad$d;->v:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ad$d;->C:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ad$d;->x:Landroid/os/Bundle;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ad$d;->r:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/ad$d;->s:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ad$d;->t:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v2 .. v25}, Landroid/support/v4/app/ae$a;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V

    .line 711
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/ad$d;->u:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/support/v4/app/ad;->a(Landroid/support/v4/app/ab;Ljava/util/ArrayList;)V

    .line 712
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/ad$d;->m:Landroid/support/v4/app/ad$p;

    invoke-static {v2, v3}, Landroid/support/v4/app/ad;->a(Landroid/support/v4/app/ac;Landroid/support/v4/app/ad$p;)V

    .line 713
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ad$e;->a(Landroid/support/v4/app/ad$d;Landroid/support/v4/app/ac;)Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method
