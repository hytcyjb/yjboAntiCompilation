.class public Lcom/zhihu/android/app/ui/fragment/h/e;
.super Lcom/zhihu/android/app/ui/fragment/e;
.source "FollowingTabsFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# instance fields
.field private d:Lcom/zhihu/android/app/ui/widget/b/b;

.field private e:Landroid/view/MenuItem;

.field private f:Lcom/zhihu/android/app/ui/widget/b/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/e;-><init>()V

    return-void
.end method

.method public static e()Lcom/zhihu/android/app/util/bb;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lcom/zhihu/android/app/util/bb;

    const-class v1, Lcom/zhihu/android/app/ui/fragment/h/e;

    const/4 v2, 0x0

    const-string v3, "following-tabs"

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/util/bb;->a(Z)V

    .line 62
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/app/ui/widget/adapter/ab$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 92
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v2

    .line 93
    const-string v3, "extra_people_id"

    invoke-virtual {v2}, Lcom/zhihu/android/app/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v2, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;

    const-class v3, Lcom/zhihu/android/app/ui/fragment/h/d;

    const v4, 0x7f090397

    invoke-virtual {p0, v4}, Lcom/zhihu/android/app/ui/fragment/h/e;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v2, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;

    const-class v3, Lcom/zhihu/android/app/ui/fragment/h/b;

    const v4, 0x7f090395

    invoke-virtual {p0, v4}, Lcom/zhihu/android/app/ui/fragment/h/e;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v2, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;

    const-class v3, Lcom/zhihu/android/app/ui/fragment/h/f;

    const v4, 0x7f090398

    invoke-virtual {p0, v4}, Lcom/zhihu/android/app/ui/fragment/h/e;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v2, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;

    const-class v3, Lcom/zhihu/android/app/ui/fragment/h/c;

    const v4, 0x7f090396

    invoke-virtual {p0, v4}, Lcom/zhihu/android/app/ui/fragment/h/e;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 158
    return-void
.end method

.method public a(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    return-void
.end method

.method public a(Lcom/zhihu/android/api/model/NotificationBadge;)V
    .locals 4
    .parameter

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/h/e;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->e:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/zhihu/android/api/model/NotificationBadge;->shouldShakeBell()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->f:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->start()V

    .line 248
    :goto_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->d:Lcom/zhihu/android/app/ui/widget/b/b;

    if-eqz v0, :cond_0

    .line 249
    iget-wide v0, p1, Lcom/zhihu/android/api/model/NotificationBadge;->newMessagesCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->d:Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/b;->a()V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->f:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->stop()V

    goto :goto_1

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->d:Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/b;->c()V

    goto :goto_0
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/e;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    const v1, 0x7f0903a1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setTitle(I)V

    .line 75
    new-instance v0, Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/h/e;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/support/v7/c/a/b;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/h/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/c/a/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/zhihu/android/app/ui/widget/b/b;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->d:Lcom/zhihu/android/app/ui/widget/b/b;

    .line 76
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->d:Lcom/zhihu/android/app/ui/widget/b/b;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/b/b;->setAlpha(I)V

    .line 77
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->d:Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->d:Lcom/zhihu/android/app/ui/widget/b/b;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/h/e$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/h/e$1;-><init>(Lcom/zhihu/android/app/ui/fragment/h/e;)V

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/h/e;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 138
    packed-switch p1, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 140
    :pswitch_0
    const-string v0, "FollowingQuestions"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_1
    const-string v0, "FollowingCollections"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :pswitch_2
    const-string v0, "FollowingTopics"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :pswitch_3
    const-string v0, "FollowingColumns"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/e;->c()V

    .line 113
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->a:Lcom/zhihu/android/a/as;

    iget-object v0, v0, Lcom/zhihu/android/a/as;->d:Lcom/zhihu/android/base/widget/ZHViewPager;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 115
    :pswitch_0
    const-string v0, "FollowingQuestions"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :pswitch_1
    const-string v0, "FollowingCollections"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :pswitch_2
    const-string v0, "FollowingTopics"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :pswitch_3
    const-string v0, "FollowingColumns"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/e;->onCreate(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/e;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 200
    const v0, 0x7f110014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 201
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/e;->onHiddenChanged(Z)V

    .line 187
    if-nez p1, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/h/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->x()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 189
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/h/e;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->f:Lcom/zhihu/android/app/ui/widget/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->f:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->f:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->stop()V

    goto :goto_0
.end method

.method public onNotificationBadgeChangedEvent(Lcom/zhihu/android/app/d/k;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/k;->a()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 233
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/h/e;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    .line 234
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 205
    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 214
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/e;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 217
    :goto_0
    return v0

    .line 208
    :pswitch_0
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment;->a()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    .line 216
    :goto_1
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/h/e;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 217
    const/4 v0, 0x1

    goto :goto_0

    .line 211
    :pswitch_1
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/k/g;->e()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    goto :goto_1

    .line 206
    :pswitch_data_0
    .packed-switch 0x7f100283
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/e;->onPause()V

    .line 170
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->f:Lcom/zhihu/android/app/ui/widget/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->f:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->f:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->stop()V

    .line 174
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/e;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 223
    const v0, 0x7f100284

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->e:Landroid/view/MenuItem;

    .line 224
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->e:Landroid/view/MenuItem;

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 225
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/h/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 226
    new-instance v1, Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/h/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zhihu/android/app/ui/widget/b/d;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->f:Lcom/zhihu/android/app/ui/widget/b/d;

    .line 227
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->e:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->f:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 228
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/e;->onResume()V

    .line 179
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/h/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->x()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 181
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/h/e;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    .line 182
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->a:Lcom/zhihu/android/a/as;

    iget-object v0, v0, Lcom/zhihu/android/a/as;->d:Lcom/zhihu/android/base/widget/ZHViewPager;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->c:Lcom/zhihu/android/app/ui/widget/adapter/ab;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/widget/adapter/ab;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHViewPager;->setOffscreenPageLimit(I)V

    .line 106
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h/e;->a:Lcom/zhihu/android/a/as;

    iget-object v0, v0, Lcom/zhihu/android/a/as;->d:Lcom/zhihu/android/base/widget/ZHViewPager;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHViewPager;->a(Landroid/support/v4/view/ViewPager$f;)V

    .line 107
    return-void
.end method
