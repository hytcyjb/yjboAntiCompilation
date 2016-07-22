.class public abstract Lcom/artitk/licensefragment/a/a/a;
.super Landroid/support/v4/app/Fragment;
.source "LicenseFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artitk/licensefragment/a/a/a$a;
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Lcom/artitk/licensefragment/model/a;

.field protected c:Lcom/artitk/licensefragment/model/a;

.field protected final d:Z

.field protected e:Z

.field protected f:Z

.field private g:Lcom/artitk/licensefragment/a/a/a$a;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/artitk/licensefragment/model/b;",
            ">;"
        }
    .end annotation
.end field

.field private j:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/artitk/licensefragment/a/a/a;->d:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/artitk/licensefragment/a/a/a;->f:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/artitk/licensefragment/a/a/a;->h:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Lcom/artitk/licensefragment/model/a;

    invoke-direct {v0}, Lcom/artitk/licensefragment/model/a;-><init>()V

    iput-object v0, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    .line 58
    return-void
.end method

.method protected static a(Lcom/artitk/licensefragment/a/a/a;)Lcom/artitk/licensefragment/a/a/a;
    .locals 1
    .parameter

    .prologue
    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/artitk/licensefragment/a/a/a;->setArguments(Landroid/os/Bundle;)V

    .line 76
    return-object p0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 210
    iget v0, p0, Lcom/artitk/licensefragment/a/a/a;->j:I

    if-nez v0, :cond_1

    .line 232
    :cond_0
    return-void

    .line 212
    :cond_1
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 227
    new-instance v2, Lcom/artitk/licensefragment/b/b;

    iget v0, p0, Lcom/artitk/licensefragment/a/a/a;->j:I

    invoke-direct {v2, v0}, Lcom/artitk/licensefragment/b/b;-><init>(I)V

    .line 229
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v1, v0

    .line 230
    invoke-virtual {v2, v4}, Lcom/artitk/licensefragment/b/b;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/artitk/licensefragment/a/a/a;->h:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :array_0
    .array-data 0x4
        0x0t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x0t 0x0t 0x0t 0x1t
    .end array-data
.end method


# virtual methods
.method public a(Lcom/artitk/licensefragment/model/a;)Lcom/artitk/licensefragment/a/a/a;
    .locals 2
    .parameter

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/artitk/licensefragment/a/a/a;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "LicenseFragment"

    const-string v1, "Set Custom UI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    iput-object p1, p0, Lcom/artitk/licensefragment/a/a/a;->c:Lcom/artitk/licensefragment/model/a;

    .line 311
    return-object p0
.end method

.method public a(Z)Lcom/artitk/licensefragment/a/a/a;
    .locals 3
    .parameter

    .prologue
    .line 252
    const-string v1, "LicenseFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log - Turn "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "on"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iput-boolean p1, p0, Lcom/artitk/licensefragment/a/a/a;->e:Z

    .line 256
    return-object p0

    .line 252
    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method

.method public a([I)Lcom/artitk/licensefragment/a/a/a;
    .locals 3
    .parameter

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/artitk/licensefragment/a/a/a;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "LicenseFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add License - count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/a;->h:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/artitk/licensefragment/b/a;->a([I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 289
    return-object p0
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/artitk/licensefragment/a/a/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/artitk/licensefragment/a/a/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "license_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/artitk/licensefragment/a/a/a;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/artitk/licensefragment/a/a/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "license_ids"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 199
    invoke-direct {p0}, Lcom/artitk/licensefragment/a/a/a;->b()V

    .line 201
    new-instance v0, Lcom/artitk/licensefragment/model/LicenseManager;

    invoke-virtual {p0}, Lcom/artitk/licensefragment/a/a/a;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/artitk/licensefragment/model/LicenseManager;-><init>(Landroid/content/Context;)V

    .line 202
    iget-boolean v1, p0, Lcom/artitk/licensefragment/a/a/a;->f:Z

    invoke-virtual {v0, v1}, Lcom/artitk/licensefragment/model/LicenseManager;->a(Z)Lcom/artitk/licensefragment/model/LicenseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/artitk/licensefragment/a/a/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/artitk/licensefragment/model/LicenseManager;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/artitk/licensefragment/a/a/a;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/artitk/licensefragment/a/a/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 205
    :cond_0
    iget-boolean v1, p0, Lcom/artitk/licensefragment/a/a/a;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "LicenseFragment"

    const-string v2, "Call -> onFirstTimeLaunched(ArrayList<License>)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1
    invoke-virtual {p0, v0}, Lcom/artitk/licensefragment/a/a/a;->a(Ljava/util/ArrayList;)V

    .line 207
    return-void

    .line 195
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method protected abstract a(Landroid/os/Bundle;)V
.end method

.method protected abstract a(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/artitk/licensefragment/model/b;",
            ">;)V"
        }
    .end annotation
.end method

.method public b(Ljava/util/ArrayList;)Lcom/artitk/licensefragment/a/a/a;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/artitk/licensefragment/model/b;",
            ">;)",
            "Lcom/artitk/licensefragment/a/a/a;"
        }
    .end annotation

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/artitk/licensefragment/a/a/a;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "LicenseFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add Custom License - count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    iput-object p1, p0, Lcom/artitk/licensefragment/a/a/a;->i:Ljava/util/ArrayList;

    .line 300
    return-object p0
.end method

.method public b(Z)Lcom/artitk/licensefragment/a/a/a;
    .locals 3
    .parameter

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/artitk/licensefragment/a/a/a;->e:Z

    if-eqz v0, :cond_0

    const-string v1, "LicenseFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "License Chain - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v0, "enable"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    iput-boolean p1, p0, Lcom/artitk/licensefragment/a/a/a;->f:Z

    .line 267
    return-object p0

    .line 264
    :cond_1
    const-string v0, "disable"

    goto :goto_0
.end method

.method protected abstract b(Landroid/os/Bundle;)V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    if-nez p1, :cond_4

    .line 148
    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/a;->c:Lcom/artitk/licensefragment/model/a;

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/a;->c:Lcom/artitk/licensefragment/model/a;

    invoke-virtual {v0}, Lcom/artitk/licensefragment/model/a;->a()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    iget-object v1, p0, Lcom/artitk/licensefragment/a/a/a;->c:Lcom/artitk/licensefragment/model/a;

    invoke-virtual {v1}, Lcom/artitk/licensefragment/model/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/artitk/licensefragment/model/a;->a(I)Lcom/artitk/licensefragment/model/a;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/a;->c:Lcom/artitk/licensefragment/model/a;

    invoke-virtual {v0}, Lcom/artitk/licensefragment/model/a;->b()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    iget-object v1, p0, Lcom/artitk/licensefragment/a/a/a;->c:Lcom/artitk/licensefragment/model/a;

    invoke-virtual {v1}, Lcom/artitk/licensefragment/model/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/artitk/licensefragment/model/a;->b(I)Lcom/artitk/licensefragment/model/a;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/a;->c:Lcom/artitk/licensefragment/model/a;

    invoke-virtual {v0}, Lcom/artitk/licensefragment/model/a;->c()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    iget-object v1, p0, Lcom/artitk/licensefragment/a/a/a;->c:Lcom/artitk/licensefragment/model/a;

    invoke-virtual {v1}, Lcom/artitk/licensefragment/model/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/artitk/licensefragment/model/a;->c(I)Lcom/artitk/licensefragment/model/a;

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/a;->c:Lcom/artitk/licensefragment/model/a;

    invoke-virtual {v0}, Lcom/artitk/licensefragment/model/a;->d()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    iget-object v1, p0, Lcom/artitk/licensefragment/a/a/a;->c:Lcom/artitk/licensefragment/model/a;

    invoke-virtual {v1}, Lcom/artitk/licensefragment/model/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/artitk/licensefragment/model/a;->d(I)Lcom/artitk/licensefragment/model/a;

    .line 155
    :cond_3
    invoke-virtual {p0}, Lcom/artitk/licensefragment/a/a/a;->a()V

    .line 170
    :goto_0
    return-void

    .line 157
    :cond_4
    const-string v0, "log_enable"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/artitk/licensefragment/a/a/a;->e:Z

    .line 159
    const-string v0, "custom_ui"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 161
    new-instance v1, Lcom/artitk/licensefragment/model/a;

    invoke-direct {v1}, Lcom/artitk/licensefragment/model/a;-><init>()V

    iput-object v1, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    .line 162
    iget-object v1, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/artitk/licensefragment/model/a;->a(I)Lcom/artitk/licensefragment/model/a;

    .line 163
    iget-object v1, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/artitk/licensefragment/model/a;->b(I)Lcom/artitk/licensefragment/model/a;

    .line 164
    iget-object v1, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/artitk/licensefragment/model/a;->c(I)Lcom/artitk/licensefragment/model/a;

    .line 165
    iget-object v1, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    const/4 v2, 0x3

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/artitk/licensefragment/model/a;->d(I)Lcom/artitk/licensefragment/model/a;

    .line 167
    iget-boolean v0, p0, Lcom/artitk/licensefragment/a/a/a;->e:Z

    if-eqz v0, :cond_5

    const-string v0, "LicenseFragment"

    const-string v1, "Call -> onRestoreState(Bundle)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_5
    invoke-virtual {p0, p1}, Lcom/artitk/licensefragment/a/a/a;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 121
    iget-boolean v0, p0, Lcom/artitk/licensefragment/a/a/a;->a:Z

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    sget v2, Lcom/artitk/licensefragment/a$a;->license_fragment_background:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artitk/licensefragment/model/a;->a(I)Lcom/artitk/licensefragment/model/a;

    .line 125
    iget-object v1, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    sget v2, Lcom/artitk/licensefragment/a$a;->license_fragment_text_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artitk/licensefragment/model/a;->b(I)Lcom/artitk/licensefragment/model/a;

    .line 126
    iget-object v1, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    sget v2, Lcom/artitk/licensefragment/a$a;->license_fragment_background_item:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artitk/licensefragment/model/a;->c(I)Lcom/artitk/licensefragment/model/a;

    .line 127
    iget-object v1, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    sget v2, Lcom/artitk/licensefragment/a$a;->license_fragment_text_color_item:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/artitk/licensefragment/model/a;->d(I)Lcom/artitk/licensefragment/model/a;

    .line 131
    :cond_0
    :try_start_0
    check-cast p1, Lcom/artitk/licensefragment/a/a/a$a;

    iput-object p1, p0, Lcom/artitk/licensefragment/a/a/a;->g:Lcom/artitk/licensefragment/a/a/a$a;

    .line 132
    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/a;->g:Lcom/artitk/licensefragment/a/a/a$a;

    invoke-interface {v0}, Lcom/artitk/licensefragment/a/a/a$a;->a()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    iget-boolean v1, p0, Lcom/artitk/licensefragment/a/a/a;->e:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artitk/licensefragment/a/a/a;->g:Lcom/artitk/licensefragment/a/a/a$a;

    .line 245
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 83
    iput-boolean v3, p0, Lcom/artitk/licensefragment/a/a/a;->a:Z

    .line 92
    sget-object v0, Lcom/artitk/licensefragment/a$e;->LicenseFragment:[I

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    sget v1, Lcom/artitk/licensefragment/a$e;->LicenseFragment_lfLicenseID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/artitk/licensefragment/a/a/a;->j:I

    .line 95
    sget v1, Lcom/artitk/licensefragment/a$e;->LicenseFragment_lfLicenseChain:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/artitk/licensefragment/a/a/a;->f:Z

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    sget v3, Lcom/artitk/licensefragment/a$e;->LicenseFragment_lfTitleBackgroundColor:I

    sget v4, Lcom/artitk/licensefragment/a$a;->license_fragment_background:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/artitk/licensefragment/model/a;->a(I)Lcom/artitk/licensefragment/model/a;

    .line 101
    iget-object v2, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    sget v3, Lcom/artitk/licensefragment/a$e;->LicenseFragment_lfTitleTextColor:I

    sget v4, Lcom/artitk/licensefragment/a$a;->license_fragment_text_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/artitk/licensefragment/model/a;->b(I)Lcom/artitk/licensefragment/model/a;

    .line 103
    iget-object v2, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    sget v3, Lcom/artitk/licensefragment/a$e;->LicenseFragment_lfLicenseBackgroundColor:I

    sget v4, Lcom/artitk/licensefragment/a$a;->license_fragment_background_item:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/artitk/licensefragment/model/a;->c(I)Lcom/artitk/licensefragment/model/a;

    .line 105
    iget-object v2, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    sget v3, Lcom/artitk/licensefragment/a$e;->LicenseFragment_lfLicenseTextColor:I

    sget v4, Lcom/artitk/licensefragment/a$a;->license_fragment_text_color_item:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/artitk/licensefragment/model/a;->d(I)Lcom/artitk/licensefragment/model/a;

    .line 108
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    const-string v0, "log_enable"

    iget-boolean v1, p0, Lcom/artitk/licensefragment/a/a/a;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    const-string v0, "custom_ui"

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    invoke-virtual {v3}, Lcom/artitk/licensefragment/model/a;->a()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    invoke-virtual {v3}, Lcom/artitk/licensefragment/model/a;->b()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    invoke-virtual {v3}, Lcom/artitk/licensefragment/model/a;->c()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/artitk/licensefragment/a/a/a;->b:Lcom/artitk/licensefragment/model/a;

    invoke-virtual {v3}, Lcom/artitk/licensefragment/model/a;->d()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 190
    iget-boolean v0, p0, Lcom/artitk/licensefragment/a/a/a;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "LicenseFragment"

    const-string v1, "Call -> onSaveState(Bundle)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    invoke-virtual {p0, p1}, Lcom/artitk/licensefragment/a/a/a;->b(Landroid/os/Bundle;)V

    .line 192
    return-void
.end method
