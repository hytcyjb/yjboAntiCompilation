.class public Lcom/zhihu/android/app/ui/fragment/f/e;
.super Lcom/zhihu/android/app/ui/fragment/f/a;
.source "NotificationCommentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/f/a",
        "<",
        "Lcom/zhihu/android/api/model/NotificationActionList;",
        ">;"
    }
.end annotation


# instance fields
.field private t:Ljava/lang/String;

.field private u:J

.field private v:Lcom/zhihu/android/api/b/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/f/a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;JJLjava/lang/String;Lcom/zhihu/android/api/model/CommentStatus;)Lcom/zhihu/android/app/util/bb;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    const-string v1, "extra_notification_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "extra_count"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 70
    const-string v1, "extra_resource_type"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "extra_resource_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 72
    if-eqz p6, :cond_0

    .line 73
    const-string v1, "extra_comment_status"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 75
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-comments"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    new-instance v2, Lcom/zhihu/android/app/util/bb;

    const-class v3, Lcom/zhihu/android/app/ui/fragment/f/e;

    invoke-direct {v2, v3, v0, v1}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v2
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/f/e;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/e;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/f/e;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/e;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/f/e;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/e;->b(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/f/e;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/e;->b(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected C()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/e;->m:Lcom/zhihu/android/a/af;

    iget-object v0, v0, Lcom/zhihu/android/a/af;->e:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->setVisibility(I)V

    .line 199
    return-void
.end method

.method protected a(Lcom/zhihu/android/api/model/NotificationActionList;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/api/model/NotificationActionList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/zhihu/android/api/model/NotificationActionList;->data:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p1, Lcom/zhihu/android/api/model/NotificationActionList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/NotificationAction;

    .line 187
    iget-object v3, v0, Lcom/zhihu/android/api/model/NotificationAction;->target:Lcom/zhihu/android/api/model/ZHObject;

    invoke-virtual {v3}, Lcom/zhihu/android/api/model/ZHObject;->isComment()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    iget-object v0, v0, Lcom/zhihu/android/api/model/NotificationAction;->target:Lcom/zhihu/android/api/model/ZHObject;

    const-class v3, Lcom/zhihu/android/api/model/Comment;

    invoke-static {v0, v3}, Lcom/zhihu/android/api/model/ZHObject;->to(Lcom/zhihu/android/api/model/ZHObject;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Comment;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/Comment;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_1
    return-object v1
.end method

.method protected a(Lcom/zhihu/android/api/model/Paging;)V
    .locals 5
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/e;->v:Lcom/zhihu/android/api/b/y;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/f/e;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/e;->o()Lcom/zhihu/android/api/model/Paging;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhihu/android/api/model/Paging;->getNextOffset()J

    move-result-wide v2

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/f/e$2;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/f/e$2;-><init>(Lcom/zhihu/android/app/ui/fragment/f/e;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zhihu/android/api/b/y;->b(Ljava/lang/String;JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 178
    return-void
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/f/a;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/e;->z()V

    .line 94
    const v0, 0x7f0903aa

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/zhihu/android/app/ui/fragment/f/e;->u:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/f/e;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/e;->a(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method protected a(Z)V
    .locals 5
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/e;->v:Lcom/zhihu/android/api/b/y;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/f/e;->t:Ljava/lang/String;

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/f/e$1;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/f/e$1;-><init>(Lcom/zhihu/android/app/ui/fragment/f/e;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zhihu/android/api/b/y;->b(Ljava/lang/String;JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 162
    return-void
.end method

.method protected synthetic c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 54
    check-cast p1, Lcom/zhihu/android/api/model/NotificationActionList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/e;->a(Lcom/zhihu/android/api/model/NotificationActionList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCommentActionEvent(Lcom/zhihu/android/app/d/f;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/a;->onCommentActionEvent(Lcom/zhihu/android/app/d/f;)V

    .line 204
    return-void
.end method

.method public onCommentEvent(Lcom/zhihu/android/app/d/g;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/f/e;->q:J

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/f/e;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/zhihu/android/app/d/g;->a(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/e;->a(Lcom/zhihu/android/app/d/g;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->a()Lcom/zhihu/android/api/model/Comment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/e;->c(Lcom/zhihu/android/api/model/Comment;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/a;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/e;->d(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/e;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_notification_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/e;->t:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/e;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/f/e;->u:J

    .line 87
    const-class v0, Lcom/zhihu/android/api/b/y;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/y;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/e;->v:Lcom/zhihu/android/api/b/y;

    .line 88
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    const v0, 0x7f110016

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 100
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 127
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f100288

    if-ne v0, v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/f/e;->p:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 145
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 128
    :sswitch_0
    const-string v2, "answer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "question"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "collection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "article"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 130
    :pswitch_0
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/f/e;->q:J

    invoke-static {v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(J)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/e;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_1

    .line 133
    :pswitch_1
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/f/e;->q:J

    invoke-static {v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(J)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/e;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_1

    .line 136
    :pswitch_2
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/f/e;->q:J

    invoke-static {v0, v1}, Lcom/zhihu/android/app/ui/fragment/d/b;->a(J)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/e;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_1

    .line 139
    :pswitch_3
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/f/e;->q:J

    invoke-static {v0, v1}, Lcom/zhihu/android/app/ui/fragment/b;->a(J)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/e;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_1

    .line 128
    nop

    :sswitch_data_0
    .sparse-switch
        -0x67ca5162 -> :sswitch_2
        -0x5435c042 -> :sswitch_0
        -0x457dc41a -> :sswitch_1
        -0x2ba7330a -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/a;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 105
    const v0, 0x7f100288

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/f/e;->p:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_1
    return-void

    .line 107
    :sswitch_0
    const-string v3, "answer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "question"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "collection"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "article"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 109
    :pswitch_0
    const v0, 0x7f090051

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 112
    :pswitch_1
    const v0, 0x7f090054

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 115
    :pswitch_2
    const v0, 0x7f090053

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 118
    :pswitch_3
    const v0, 0x7f090052

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 107
    :sswitch_data_0
    .sparse-switch
        -0x67ca5162 -> :sswitch_2
        -0x5435c042 -> :sswitch_0
        -0x457dc41a -> :sswitch_1
        -0x2ba7330a -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
