.class Lcn/sharesdk/framework/statistics/NewAppReceiver$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/statistics/NewAppReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcn/sharesdk/framework/utils/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcn/sharesdk/framework/utils/b;->a(Landroid/content/Context;)Lcn/sharesdk/framework/utils/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcn/sharesdk/framework/utils/R;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/b;->w()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/b;->x()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v3, "ShareSDK"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/sharesdk/framework/utils/f;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/f;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcn/sharesdk/framework/utils/f;

    new-instance v0, Ljava/io/File;

    const-string v1, ".ba"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcn/sharesdk/framework/utils/f;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcn/sharesdk/framework/utils/f;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/f;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcn/sharesdk/framework/utils/f;

    new-instance v0, Ljava/io/File;

    const-string v2, ".ba"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-object v1, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcn/sharesdk/framework/utils/f;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcn/sharesdk/framework/utils/f;

    const-string v1, "buffered_apps"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/f;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcn/sharesdk/framework/utils/f;

    const-string v1, "buffered_apps_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/f;->a(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcn/sharesdk/framework/utils/f;

    const-string v1, "buffered_apps"

    invoke-virtual {v0, v1, p1}, Lcn/sharesdk/framework/utils/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcn/sharesdk/framework/utils/f;

    const-string v1, "buffered_apps_time"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/f;->c(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
