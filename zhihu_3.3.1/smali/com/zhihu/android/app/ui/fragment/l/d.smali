.class public Lcom/zhihu/android/app/ui/fragment/l/d;
.super Lcom/zhihu/android/app/ui/fragment/o;
.source "ProfileEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/zhihu/android/app/ui/dialog/r$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/fragment/l/d$a;,
        Lcom/zhihu/android/app/ui/fragment/l/d$b;
    }
.end annotation


# instance fields
.field private A:Lcom/zhihu/android/base/a/a/b;

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Lcom/zhihu/android/bumblebee/http/e;

.field private E:Z

.field private a:Lcom/zhihu/android/a/ao;

.field private b:Lcom/zhihu/android/a/dh;

.field private c:Lcom/zhihu/android/api/model/People;

.field private d:Ljava/util/Map;

.field private e:Landroid/widget/ArrayAdapter;

.field private f:Lcom/zhihu/android/api/b/z;

.field private g:Lcom/zhihu/android/api/b/x;

.field private h:Lcom/zhihu/android/base/a/a/a;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/text/TextWatcher;

.field private n:Landroid/text/TextWatcher;

.field private o:Landroid/text/TextWatcher;

.field private p:Landroid/text/TextWatcher;

.field private q:Landroid/view/MenuItem;

.field private r:Landroid/view/MenuItem;

.field private s:Lcom/zhihu/android/bumblebee/http/e;

.field private t:Lcom/zhihu/android/base/a/a/b;

.field private u:Lcom/zhihu/android/base/a/a/b;

.field private v:Lcom/zhihu/android/base/a/a/b;

.field private w:Lcom/zhihu/android/base/a/a/b;

.field private x:Lcom/zhihu/android/base/a/a/b;

.field private y:Lcom/zhihu/android/base/a/a/b;

.field private z:Lcom/zhihu/android/base/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;-><init>()V

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->d:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->i:Ljava/util/List;

    .line 143
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/l/d$b;

    const-string v1, "description"

    invoke-direct {v0, p0, v1}, Lcom/zhihu/android/app/ui/fragment/l/d$b;-><init>(Lcom/zhihu/android/app/ui/fragment/l/d;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->m:Landroid/text/TextWatcher;

    .line 145
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/l/d$b;

    const-string v1, "headline"

    invoke-direct {v0, p0, v1}, Lcom/zhihu/android/app/ui/fragment/l/d$b;-><init>(Lcom/zhihu/android/app/ui/fragment/l/d;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->n:Landroid/text/TextWatcher;

    .line 147
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/l/d$b;

    const-string v1, "name"

    invoke-direct {v0, p0, v1}, Lcom/zhihu/android/app/ui/fragment/l/d$b;-><init>(Lcom/zhihu/android/app/ui/fragment/l/d;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->o:Landroid/text/TextWatcher;

    .line 149
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/l/d$b;

    const-string v1, "location"

    invoke-direct {v0, p0, v1}, Lcom/zhihu/android/app/ui/fragment/l/d$b;-><init>(Lcom/zhihu/android/app/ui/fragment/l/d;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->p:Landroid/text/TextWatcher;

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->E:Z

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/d;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput p1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->B:I

    return p1
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/d;Lcom/zhihu/android/api/model/People;)Lcom/zhihu/android/api/model/People;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->c:Lcom/zhihu/android/api/model/People;

    return-object p1
.end method

.method public static a(Lcom/zhihu/android/api/model/People;)Lcom/zhihu/android/app/util/bb;
    .locals 5
    .parameter

    .prologue
    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    const-string v1, "extra_people"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 184
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/l/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profile-editor-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v1
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 690
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 691
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 692
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 693
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 695
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->s:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->s:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 700
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->f()V

    .line 702
    invoke-static {v1}, Lcom/zhihu/android/base/util/j;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 704
    new-instance v1, Lcom/zhihu/android/bumblebee/http/g$a;

    const-string v2, "picture"

    const-string v3, "avatar.img"

    new-instance v4, Lcom/google/api/client/http/ByteArrayContent;

    const-string v5, "image/*"

    invoke-direct {v4, v5, v0}, Lcom/google/api/client/http/ByteArrayContent;-><init>(Ljava/lang/String;[B)V

    invoke-direct {v1, v2, v3, v4}, Lcom/zhihu/android/bumblebee/http/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpContent;)V

    .line 706
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->g:Lcom/zhihu/android/api/b/x;

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/l/d$7;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/l/d$7;-><init>(Lcom/zhihu/android/app/ui/fragment/l/d;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/x;->a(Lcom/zhihu/android/bumblebee/http/g$a;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->s:Lcom/zhihu/android/bumblebee/http/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :goto_0
    return-void

    .line 727
    :catch_0
    move-exception v0

    .line 728
    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/Throwable;)V

    .line 729
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->h()V

    goto :goto_0
.end method

.method private a(Lcom/zhihu/android/api/model/RenameStatus;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 542
    iget-boolean v0, p1, Lcom/zhihu/android/api/model/RenameStatus;->canRename:Z

    if-eqz v0, :cond_0

    .line 543
    iput-boolean v8, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->E:Z

    .line 544
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->w:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v0, v8}, Lcom/zhihu/android/base/widget/ZHEditText;->setEnabled(Z)V

    .line 549
    :goto_0
    return-void

    .line 546
    :cond_0
    const-wide/16 v0, 0xb4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/zhihu/android/api/model/RenameStatus;->nameUpdatedTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 547
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0903da

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/zhihu/android/app/util/at;->b(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/d;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->h()V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/d;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/l/d;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/d;Lcom/zhihu/android/api/model/RenameStatus;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/l/d;->a(Lcom/zhihu/android/api/model/RenameStatus;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/d;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/l/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/l/d;)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->q:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/l/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->C:Ljava/lang/String;

    return-object p1
.end method

.method private b(Lcom/zhihu/android/api/model/People;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 510
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->j:Lcom/zhihu/android/app/ui/widget/CircleAvatarView;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->c:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->avatarUrl:Ljava/lang/String;

    sget-object v3, Lcom/zhihu/android/app/util/ImageUtils$ImageSize;->XL:Lcom/zhihu/android/app/util/ImageUtils$ImageSize;

    invoke-static {v1, v3}, Lcom/zhihu/android/app/util/ImageUtils;->a(Ljava/lang/String;Lcom/zhihu/android/app/util/ImageUtils$ImageSize;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/CircleAvatarView;->setImageURI(Landroid/net/Uri;)V

    .line 512
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->w:Lcom/zhihu/android/base/widget/ZHEditText;

    iget-object v1, p1, Lcom/zhihu/android/api/model/People;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->k:Lcom/zhihu/android/base/widget/ZHEditText;

    iget-object v1, p1, Lcom/zhihu/android/api/model/People;->headline:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->f:Lcom/zhihu/android/base/widget/ZHEditText;

    iget-object v1, p1, Lcom/zhihu/android/api/model/People;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v0, p1, Lcom/zhihu/android/api/model/People;->locations:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/People;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v1, v0, Lcom/zhihu/android/a/ao;->s:Lcom/zhihu/android/base/widget/ZHEditText;

    iget-object v0, p1, Lcom/zhihu/android/api/model/People;->locations:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Topic;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Topic;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHEditText;->setText(Ljava/lang/CharSequence;)V

    .line 522
    :cond_0
    iget-object v0, p1, Lcom/zhihu/android/api/model/People;->educations:Ljava/util/List;

    if-eqz v0, :cond_3

    move v1, v2

    .line 523
    :goto_0
    iget-object v0, p1, Lcom/zhihu/android/api/model/People;->educations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 524
    iget-object v0, p1, Lcom/zhihu/android/api/model/People;->educations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Education;

    .line 525
    iget-object v3, v0, Lcom/zhihu/android/api/model/Education;->school:Lcom/zhihu/android/api/model/Topic;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/zhihu/android/api/model/Education;->school:Lcom/zhihu/android/api/model/Topic;

    iget-object v3, v3, Lcom/zhihu/android/api/model/Topic;->name:Ljava/lang/String;

    :goto_1
    iget-object v5, v0, Lcom/zhihu/android/api/model/Education;->major:Lcom/zhihu/android/api/model/Topic;

    if-eqz v5, :cond_2

    iget-object v0, v0, Lcom/zhihu/android/api/model/Education;->major:Lcom/zhihu/android/api/model/Topic;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Topic;->name:Ljava/lang/String;

    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/zhihu/android/app/ui/fragment/l/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 525
    goto :goto_1

    :cond_2
    move-object v0, v4

    goto :goto_2

    .line 530
    :cond_3
    iget-object v0, p1, Lcom/zhihu/android/api/model/People;->employments:Ljava/util/List;

    if-eqz v0, :cond_6

    move v1, v2

    .line 531
    :goto_3
    iget-object v0, p1, Lcom/zhihu/android/api/model/People;->employments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 532
    iget-object v0, p1, Lcom/zhihu/android/api/model/People;->employments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Employment;

    .line 533
    iget-object v3, v0, Lcom/zhihu/android/api/model/Employment;->company:Lcom/zhihu/android/api/model/Topic;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/zhihu/android/api/model/Employment;->company:Lcom/zhihu/android/api/model/Topic;

    iget-object v3, v3, Lcom/zhihu/android/api/model/Topic;->name:Ljava/lang/String;

    :goto_4
    iget-object v5, v0, Lcom/zhihu/android/api/model/Employment;->job:Lcom/zhihu/android/api/model/Topic;

    if-eqz v5, :cond_5

    iget-object v0, v0, Lcom/zhihu/android/api/model/Employment;->job:Lcom/zhihu/android/api/model/Topic;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Topic;->name:Ljava/lang/String;

    :goto_5
    invoke-direct {p0, v3, v0}, Lcom/zhihu/android/app/ui/fragment/l/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    move-object v3, v4

    .line 533
    goto :goto_4

    :cond_5
    move-object v0, v4

    goto :goto_5

    .line 538
    :cond_6
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->i:Landroid/widget/Spinner;

    iget v1, p1, Lcom/zhihu/android/api/model/People;->gender:I

    if-nez v1, :cond_7

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 539
    return-void

    .line 538
    :cond_7
    const/4 v2, 0x1

    goto :goto_6
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/l/d;Lcom/zhihu/android/api/model/People;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/l/d;->b(Lcom/zhihu/android/api/model/People;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/zhihu/android/app/ui/dialog/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/zhihu/android/app/ui/dialog/c;

    move-result-object v0

    .line 824
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->f()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->a(Landroid/support/v4/app/p;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 552
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04008a

    invoke-static {v0, v1, v3, v4}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/bk;

    .line 553
    iget-object v1, v0, Lcom/zhihu/android/a/bk;->e:Lcom/zhihu/android/base/widget/ZHTextView;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->z:Lcom/zhihu/android/base/a/a/b;

    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/zhihu/android/base/widget/ZHTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 554
    iget-object v1, v0, Lcom/zhihu/android/a/bk;->d:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    const v2, 0x7f090150

    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/l/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v1, v0, Lcom/zhihu/android/a/bk;->g:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    const v2, 0x7f090149

    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/l/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v1, v0, Lcom/zhihu/android/a/bk;->c:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v1, p1}, Lcom/zhihu/android/base/widget/ZHEditText;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v1, v0, Lcom/zhihu/android/a/bk;->f:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v1, p2}, Lcom/zhihu/android/base/widget/ZHEditText;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v1, v0, Lcom/zhihu/android/a/bk;->c:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v1, v4}, Lcom/zhihu/android/base/widget/ZHEditText;->setEnabled(Z)V

    .line 559
    iget-object v1, v0, Lcom/zhihu/android/a/bk;->f:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v1, v4}, Lcom/zhihu/android/base/widget/ZHEditText;->setEnabled(Z)V

    .line 560
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v1, v1, Lcom/zhihu/android/a/ao;->g:Lcom/zhihu/android/base/widget/ZHLinearLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/a/bk;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHLinearLayout;->addView(Landroid/view/View;)V

    .line 561
    return-void
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/l/d;)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->r:Landroid/view/MenuItem;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 564
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04008a

    invoke-static {v0, v1, v3, v4}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/bk;

    .line 565
    iget-object v1, v0, Lcom/zhihu/android/a/bk;->e:Lcom/zhihu/android/base/widget/ZHTextView;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->A:Lcom/zhihu/android/base/a/a/b;

    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/zhihu/android/base/widget/ZHTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 566
    iget-object v1, v0, Lcom/zhihu/android/a/bk;->d:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    const v2, 0x7f090138

    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/l/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v1, v0, Lcom/zhihu/android/a/bk;->g:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    const v2, 0x7f090147

    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/l/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v1, v0, Lcom/zhihu/android/a/bk;->c:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v1, p1}, Lcom/zhihu/android/base/widget/ZHEditText;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v1, v0, Lcom/zhihu/android/a/bk;->f:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v1, p2}, Lcom/zhihu/android/base/widget/ZHEditText;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v1, v0, Lcom/zhihu/android/a/bk;->c:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v1, v4}, Lcom/zhihu/android/base/widget/ZHEditText;->setEnabled(Z)V

    .line 571
    iget-object v1, v0, Lcom/zhihu/android/a/bk;->f:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v1, v4}, Lcom/zhihu/android/base/widget/ZHEditText;->setEnabled(Z)V

    .line 572
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v1, v1, Lcom/zhihu/android/a/ao;->r:Lcom/zhihu/android/base/widget/ZHLinearLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/a/bk;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHLinearLayout;->addView(Landroid/view/View;)V

    .line 573
    return-void
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/fragment/l/d;)Lcom/zhihu/android/a/ao;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    return-object v0
.end method

.method private d()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f0f007e

    const/4 v4, 0x0

    .line 350
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->e()V

    .line 352
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    invoke-virtual {v0}, Lcom/zhihu/android/a/ao;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    invoke-virtual {v1}, Lcom/zhihu/android/a/ao;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 355
    new-instance v2, Lcom/zhihu/android/base/a/a/b;

    const v3, 0x7f0200ee

    invoke-static {v0, v3, v1}, Landroid/support/v4/content/a/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zhihu/android/base/a/a/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->t:Lcom/zhihu/android/base/a/a/b;

    .line 356
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->t:Lcom/zhihu/android/base/a/a/b;

    invoke-virtual {v2, v0, v5}, Lcom/zhihu/android/base/a/a/b;->a(Landroid/content/res/Resources;I)V

    .line 357
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v2, v2, Lcom/zhihu/android/a/ao;->m:Lcom/zhihu/android/base/widget/ZHTextView;

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->t:Lcom/zhihu/android/base/a/a/b;

    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/zhihu/android/base/widget/ZHTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 359
    new-instance v2, Lcom/zhihu/android/base/a/a/b;

    const v3, 0x7f020102

    invoke-static {v0, v3, v1}, Landroid/support/v4/content/a/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zhihu/android/base/a/a/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->u:Lcom/zhihu/android/base/a/a/b;

    .line 360
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->u:Lcom/zhihu/android/base/a/a/b;

    invoke-virtual {v2, v0, v5}, Lcom/zhihu/android/base/a/a/b;->a(Landroid/content/res/Resources;I)V

    .line 361
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v2, v2, Lcom/zhihu/android/a/ao;->p:Lcom/zhihu/android/base/widget/ZHTextView;

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->u:Lcom/zhihu/android/base/a/a/b;

    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/zhihu/android/base/widget/ZHTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 363
    new-instance v2, Lcom/zhihu/android/base/a/a/b;

    const v3, 0x7f0200b7

    invoke-static {v0, v3, v1}, Landroid/support/v4/content/a/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zhihu/android/base/a/a/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->v:Lcom/zhihu/android/base/a/a/b;

    .line 364
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->v:Lcom/zhihu/android/base/a/a/b;

    invoke-virtual {v2, v0, v5}, Lcom/zhihu/android/base/a/a/b;->a(Landroid/content/res/Resources;I)V

    .line 365
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v2, v2, Lcom/zhihu/android/a/ao;->n:Lcom/zhihu/android/base/widget/ZHTextView;

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->v:Lcom/zhihu/android/base/a/a/b;

    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/zhihu/android/base/widget/ZHTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 367
    new-instance v2, Lcom/zhihu/android/base/a/a/b;

    const v3, 0x7f02010c

    invoke-static {v0, v3, v1}, Landroid/support/v4/content/a/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zhihu/android/base/a/a/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->w:Lcom/zhihu/android/base/a/a/b;

    .line 368
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->w:Lcom/zhihu/android/base/a/a/b;

    invoke-virtual {v2, v0, v5}, Lcom/zhihu/android/base/a/a/b;->a(Landroid/content/res/Resources;I)V

    .line 369
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v2, v2, Lcom/zhihu/android/a/ao;->l:Lcom/zhihu/android/base/widget/ZHTextView;

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->w:Lcom/zhihu/android/base/a/a/b;

    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/zhihu/android/base/widget/ZHTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 371
    new-instance v2, Lcom/zhihu/android/base/a/a/b;

    const v3, 0x7f020113

    invoke-static {v0, v3, v1}, Landroid/support/v4/content/a/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zhihu/android/base/a/a/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->x:Lcom/zhihu/android/base/a/a/b;

    .line 372
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->x:Lcom/zhihu/android/base/a/a/b;

    invoke-virtual {v2, v0, v5}, Lcom/zhihu/android/base/a/a/b;->a(Landroid/content/res/Resources;I)V

    .line 373
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v2, v2, Lcom/zhihu/android/a/ao;->o:Lcom/zhihu/android/base/widget/ZHTextView;

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->x:Lcom/zhihu/android/base/a/a/b;

    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/zhihu/android/base/widget/ZHTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 375
    new-instance v2, Lcom/zhihu/android/base/a/a/b;

    const v3, 0x7f0200cf

    invoke-static {v0, v3, v1}, Landroid/support/v4/content/a/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zhihu/android/base/a/a/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->y:Lcom/zhihu/android/base/a/a/b;

    .line 376
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->y:Lcom/zhihu/android/base/a/a/b;

    invoke-virtual {v2, v0, v5}, Lcom/zhihu/android/base/a/a/b;->a(Landroid/content/res/Resources;I)V

    .line 377
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v2, v2, Lcom/zhihu/android/a/ao;->q:Lcom/zhihu/android/base/widget/ZHTextView;

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->y:Lcom/zhihu/android/base/a/a/b;

    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/zhihu/android/base/widget/ZHTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 379
    new-instance v2, Lcom/zhihu/android/base/a/a/b;

    const v3, 0x7f02010e

    invoke-static {v0, v3, v1}, Landroid/support/v4/content/a/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zhihu/android/base/a/a/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->z:Lcom/zhihu/android/base/a/a/b;

    .line 380
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->z:Lcom/zhihu/android/base/a/a/b;

    invoke-virtual {v2, v0, v5}, Lcom/zhihu/android/base/a/a/b;->a(Landroid/content/res/Resources;I)V

    .line 382
    new-instance v2, Lcom/zhihu/android/base/a/a/b;

    const v3, 0x7f02010e

    invoke-static {v0, v3, v1}, Landroid/support/v4/content/a/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/zhihu/android/base/a/a/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->A:Lcom/zhihu/android/base/a/a/b;

    .line 383
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->A:Lcom/zhihu/android/base/a/a/b;

    invoke-virtual {v1, v0, v5}, Lcom/zhihu/android/base/a/a/b;->a(Landroid/content/res/Resources;I)V

    .line 385
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->e:Lcom/zhihu/android/base/widget/ZHButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->c:Lcom/zhihu/android/base/widget/ZHButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->d:Lcom/zhihu/android/base/widget/ZHButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->k:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 390
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->w:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 391
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->f:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 393
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->w:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v0, v6}, Lcom/zhihu/android/base/widget/ZHEditText;->setEnabled(Z)V

    .line 395
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->d:Lcom/zhihu/android/base/widget/ZHButton;

    invoke-virtual {v0, v8}, Lcom/zhihu/android/base/widget/ZHButton;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->c:Lcom/zhihu/android/base/widget/ZHButton;

    invoke-virtual {v0, v8}, Lcom/zhihu/android/base/widget/ZHButton;->setVisibility(I)V

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    const v1, 0x7f090133

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/l/d;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 400
    const v1, 0x7f090132

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/l/d;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 401
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v2

    const v3, 0x7f040101

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 402
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->i:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 403
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->i:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 405
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->c:Lcom/zhihu/android/api/model/People;

    iget-object v0, v0, Lcom/zhihu/android/api/model/People;->business:Lcom/zhihu/android/api/model/Topic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->c:Lcom/zhihu/android/api/model/People;

    iget-object v0, v0, Lcom/zhihu/android/api/model/People;->business:Lcom/zhihu/android/api/model/Topic;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Topic;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->c:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->business:Lcom/zhihu/android/api/model/Topic;

    iget-object v1, v1, Lcom/zhihu/android/api/model/Topic;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    const v2, 0x7f040101

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->i:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->e:Landroid/widget/ArrayAdapter;

    .line 412
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->u:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->e:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 413
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->u:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 415
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->f:Lcom/zhihu/android/api/b/z;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/l/d$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/l/d$2;-><init>(Lcom/zhihu/android/app/ui/fragment/l/d;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/z;->c(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 442
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->f()V

    .line 443
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->f:Lcom/zhihu/android/api/b/z;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/l/d$3;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/l/d$3;-><init>(Lcom/zhihu/android/app/ui/fragment/l/d;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/z;->a(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 471
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->f:Lcom/zhihu/android/api/b/z;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/l/d$4;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/l/d$4;-><init>(Lcom/zhihu/android/app/ui/fragment/l/d;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/z;->d(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->D:Lcom/zhihu/android/bumblebee/http/e;

    .line 483
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->i:Ljava/util/List;

    const v1, 0x7f09035e

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/l/d;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/zhihu/android/app/ui/fragment/l/d;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->i:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 486
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v4}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/dh;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->b:Lcom/zhihu/android/a/dh;

    .line 487
    new-instance v0, Lcom/zhihu/android/base/a/a/a;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->b:Lcom/zhihu/android/a/dh;

    iget-object v2, v2, Lcom/zhihu/android/a/dh;->c:Lcom/zhihu/android/app/ui/widget/ProgressView;

    invoke-direct {v0, v1, v2}, Lcom/zhihu/android/base/a/a/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->h:Lcom/zhihu/android/base/a/a/a;

    .line 488
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->h:Lcom/zhihu/android/base/a/a/a;

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/a/a/a;->a([I)V

    .line 489
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->h:Lcom/zhihu/android/base/a/a/a;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/a/a/a;->setAlpha(I)V

    .line 491
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->b:Lcom/zhihu/android/a/dh;

    iget-object v0, v0, Lcom/zhihu/android/a/dh;->c:Lcom/zhihu/android/app/ui/widget/ProgressView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ProgressView;->setBackgroundColor(I)V

    .line 492
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->b:Lcom/zhihu/android/a/dh;

    iget-object v0, v0, Lcom/zhihu/android/a/dh;->c:Lcom/zhihu/android/app/ui/widget/ProgressView;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->h:Lcom/zhihu/android/base/a/a/a;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ProgressView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->b:Lcom/zhihu/android/a/dh;

    invoke-virtual {v0}, Lcom/zhihu/android/a/dh;->e()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->h:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->b:Lcom/zhihu/android/a/dh;

    invoke-virtual {v1}, Lcom/zhihu/android/a/dh;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->addView(Landroid/view/View;)V

    .line 496
    return-void
.end method

.method static synthetic f(Lcom/zhihu/android/app/ui/fragment/l/d;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->e:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->b:Lcom/zhihu/android/a/dh;

    invoke-virtual {v0}, Lcom/zhihu/android/a/dh;->e()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->h:Lcom/zhihu/android/base/a/a/a;

    invoke-virtual {v0}, Lcom/zhihu/android/base/a/a/a;->start()V

    .line 501
    return-void
.end method

.method static synthetic g(Lcom/zhihu/android/app/ui/fragment/l/d;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/zhihu/android/app/ui/fragment/l/d;)Lcom/zhihu/android/api/model/People;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->c:Lcom/zhihu/android/api/model/People;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->b:Lcom/zhihu/android/a/dh;

    invoke-virtual {v0}, Lcom/zhihu/android/a/dh;->e()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->h:Lcom/zhihu/android/base/a/a/a;

    invoke-virtual {v0}, Lcom/zhihu/android/base/a/a/a;->stop()V

    .line 506
    return-void
.end method

.method static synthetic i(Lcom/zhihu/android/app/ui/fragment/l/d;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->d:Ljava/util/Map;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    const/16 v3, 0x1000

    .line 662
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 663
    sget-boolean v1, Lcom/zhihu/android/base/util/SystemUtils;->h:Z

    if-eqz v1, :cond_0

    .line 664
    invoke-virtual {p0, v0, v3}, Lcom/zhihu/android/app/ui/fragment/l/d;->startActivityForResult(Landroid/content/Intent;I)V

    .line 671
    :goto_0
    return-void

    .line 666
    :cond_0
    new-instance v1, Lcom/zhihu/android/app/util/Agent;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/zhihu/android/app/util/Agent;-><init>(Landroid/content/Intent;IZ)V

    .line 667
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v2

    const-class v3, Lcom/zhihu/android/app/ui/activity/AgentActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 668
    const-string v2, "extra_agent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 669
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/d;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    const/16 v3, 0x2000

    .line 674
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    sget-boolean v1, Lcom/zhihu/android/base/util/SystemUtils;->h:Z

    if-eqz v1, :cond_0

    .line 679
    invoke-virtual {p0, v0, v3}, Lcom/zhihu/android/app/ui/fragment/l/d;->startActivityForResult(Landroid/content/Intent;I)V

    .line 686
    :goto_0
    return-void

    .line 681
    :cond_0
    new-instance v1, Lcom/zhihu/android/app/util/Agent;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/zhihu/android/app/util/Agent;-><init>(Landroid/content/Intent;IZ)V

    .line 682
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v2

    const-class v3, Lcom/zhihu/android/app/ui/activity/AgentActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 683
    const-string v2, "extra_agent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 684
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/d;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    const v0, 0x7f040067

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/ao;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    .line 211
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    invoke-virtual {v0}, Lcom/zhihu/android/a/ao;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->i()V

    .line 645
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 583
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 584
    sparse-switch p1, :sswitch_data_0

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 586
    :sswitch_0
    if-eqz p3, :cond_0

    .line 587
    const-string v0, "REQUEST_CODE_TAKEN_PHOTO_CAMERA"

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 589
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/l/d$5;

    invoke-direct {v1, p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/d$5;-><init>(Lcom/zhihu/android/app/ui/fragment/l/d;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/l/d;->a(Lcom/zhihu/android/app/ui/fragment/d$a;)V

    goto :goto_0

    .line 609
    :sswitch_1
    if-eqz p3, :cond_0

    .line 610
    const-string v0, "REQUEST_CODE_TAKEN_PHOTO_GALLERY"

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 611
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/l/d$6;

    invoke-direct {v0, p0, p3}, Lcom/zhihu/android/app/ui/fragment/l/d$6;-><init>(Lcom/zhihu/android/app/ui/fragment/l/d;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/d;->a(Lcom/zhihu/android/app/ui/fragment/d$a;)V

    goto :goto_0

    .line 584
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/o;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 218
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->A()V

    .line 219
    const v0, 0x7f09036a

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/d;->f(I)V

    .line 220
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 829
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/o;->c()V

    .line 831
    const-string v0, "PeopleEdit"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 832
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 577
    invoke-super {p0, p1, p2, p3}, Lcom/zhihu/android/app/ui/fragment/o;->onActivityResult(IILandroid/content/Intent;)V

    .line 579
    invoke-virtual {p0, p1, p2, p3}, Lcom/zhihu/android/app/ui/fragment/l/d;->a(IILandroid/content/Intent;)V

    .line 580
    return-void
.end method

.method public onAgentEvent(Lcom/zhihu/android/app/ui/activity/AgentActivity$a;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 654
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->a()I

    move-result v0

    .line 655
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->b()I

    move-result v1

    .line 656
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->c()Landroid/content/Intent;

    move-result-object v2

    .line 658
    invoke-virtual {p0, v0, v1, v2}, Lcom/zhihu/android/app/ui/fragment/l/d;->a(IILandroid/content/Intent;)V

    .line 659
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->e:Lcom/zhihu/android/base/widget/ZHButton;

    if-ne p1, v0, :cond_2

    .line 335
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-static {v0, v1}, Lcom/zhihu/android/base/util/SystemUtils;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    const v0, 0x7f0901e4

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/dialog/r;->a(Ljava/lang/String;)Lcom/zhihu/android/app/ui/dialog/r;

    move-result-object v0

    .line 337
    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/dialog/r;->a(Lcom/zhihu/android/app/ui/dialog/r$a;)V

    .line 338
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->f()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "photo"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/r;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->j()V

    goto :goto_0

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->c:Lcom/zhihu/android/base/widget/ZHButton;

    if-ne p1, v0, :cond_3

    .line 343
    invoke-direct {p0, v1, v1}, Lcom/zhihu/android/app/ui/fragment/l/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->d:Lcom/zhihu/android/base/widget/ZHButton;

    if-ne p1, v0, :cond_0

    .line 345
    invoke-direct {p0, v1, v1}, Lcom/zhihu/android/app/ui/fragment/l/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/o;->onCreate(Landroid/os/Bundle;)V

    .line 191
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/d;->d(Z)V

    .line 193
    const-class v0, Lcom/zhihu/android/api/b/z;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/z;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->f:Lcom/zhihu/android/api/b/z;

    .line 195
    const-class v0, Lcom/zhihu/android/api/b/x;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/x;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->g:Lcom/zhihu/android/api/b/x;

    .line 197
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_people"

    const-class v2, Lcom/zhihu/android/api/model/People;

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/api/model/ZHObject;->unpackFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/People;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->c:Lcom/zhihu/android/api/model/People;

    .line 204
    return-void

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 235
    const v0, 0x7f11001a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 237
    const v0, 0x7f10028d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->q:Landroid/view/MenuItem;

    .line 238
    const v0, 0x7f10028c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->r:Landroid/view/MenuItem;

    .line 240
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->r:Landroid/view/MenuItem;

    const v1, 0x7f040019

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    .line 242
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->r:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 243
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->D:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->D:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 325
    :cond_0
    sget-boolean v0, Lcom/zhihu/android/base/util/SystemUtils;->h:Z

    if-nez v0, :cond_1

    .line 326
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 329
    :cond_1
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/o;->onDestroyView()V

    .line 330
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 753
    if-eqz p2, :cond_4

    .line 754
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->f:Lcom/zhihu/android/base/widget/ZHEditText;

    if-ne p1, v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->f:Lcom/zhihu/android/base/widget/ZHEditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->m:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->k:Lcom/zhihu/android/base/widget/ZHEditText;

    if-ne p1, v0, :cond_2

    .line 757
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->k:Lcom/zhihu/android/base/widget/ZHEditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->n:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->w:Lcom/zhihu/android/base/widget/ZHEditText;

    if-ne p1, v0, :cond_3

    .line 759
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->w:Lcom/zhihu/android/base/widget/ZHEditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->o:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 761
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->E:Z

    if-eqz v0, :cond_0

    .line 762
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->E:Z

    .line 763
    const v0, 0x7f0903d7

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/d;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 765
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->s:Lcom/zhihu/android/base/widget/ZHEditText;

    if-ne p1, v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->s:Lcom/zhihu/android/base/widget/ZHEditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->p:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 769
    :cond_4
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->f:Lcom/zhihu/android/base/widget/ZHEditText;

    if-ne p1, v0, :cond_5

    .line 770
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->f:Lcom/zhihu/android/base/widget/ZHEditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->m:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 771
    :cond_5
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->k:Lcom/zhihu/android/base/widget/ZHEditText;

    if-ne p1, v0, :cond_6

    .line 772
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->k:Lcom/zhihu/android/base/widget/ZHEditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->n:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 773
    :cond_6
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->w:Lcom/zhihu/android/base/widget/ZHEditText;

    if-ne p1, v0, :cond_7

    .line 774
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->w:Lcom/zhihu/android/base/widget/ZHEditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->o:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 775
    :cond_7
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->s:Lcom/zhihu/android/base/widget/ZHEditText;

    if-ne p1, v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->s:Lcom/zhihu/android/base/widget/ZHEditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->p:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 247
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 316
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/o;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 249
    :pswitch_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->i:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->B:I

    if-eq v0, v2, :cond_0

    .line 250
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->d:Ljava/util/Map;

    const-string v2, "gender"

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v3, v3, Lcom/zhihu/android/a/ao;->i:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v0, v0, Lcom/zhihu/android/a/ao;->u:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->C:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->C:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    const v2, 0x7f09035e

    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/l/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->d:Ljava/util/Map;

    const-string v2, "business"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->a:Lcom/zhihu/android/a/ao;

    iget-object v2, v2, Lcom/zhihu/android/a/ao;->f:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v2}, Lcom/zhihu/android/base/widget/ZHEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zhihu/android/app/util/s;->a(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 264
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->t()V

    move v0, v1

    .line 265
    goto :goto_0

    .line 258
    :cond_2
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->d:Ljava/util/Map;

    const-string v3, "business"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->q:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 269
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->r:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 271
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->f()V

    .line 273
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->f:Lcom/zhihu/android/api/b/z;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/d;->d:Ljava/util/Map;

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/l/d$1;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/fragment/l/d$1;-><init>(Lcom/zhihu/android/app/ui/fragment/l/d;)V

    invoke-interface {v0, v2, v3}, Lcom/zhihu/android/api/b/z;->a(Ljava/util/Map;Lcom/zhihu/android/bumblebee/b/c;)V

    move v0, v1

    .line 311
    goto/16 :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x7f10028d
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/o;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 226
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->d()V

    .line 228
    sget-boolean v0, Lcom/zhihu/android/base/util/SystemUtils;->h:Z

    if-nez v0, :cond_0

    .line 229
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 231
    :cond_0
    return-void
.end method

.method public p_()V
    .locals 0

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/d;->j()V

    .line 650
    return-void
.end method
