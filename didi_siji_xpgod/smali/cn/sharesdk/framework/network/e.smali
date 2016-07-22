.class public abstract Lcn/sharesdk/framework/network/e;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Lcn/sharesdk/framework/network/OnReadListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/io/InputStream;
.end method

.method protected abstract b()J
.end method

.method public c()Lorg/apache/http/entity/InputStreamEntity;
    .locals 5

    new-instance v0, Lcn/sharesdk/framework/network/c;

    invoke-virtual {p0}, Lcn/sharesdk/framework/network/e;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/network/c;-><init>(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcn/sharesdk/framework/network/e;->b:Lcn/sharesdk/framework/network/OnReadListener;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/network/c;->a(Lcn/sharesdk/framework/network/OnReadListener;)V

    iget-wide v1, p0, Lcn/sharesdk/framework/network/e;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcn/sharesdk/framework/network/e;->a:J

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/network/c;->skip(J)J

    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/framework/network/e;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/sharesdk/framework/network/e;->a:J

    sub-long/2addr v1, v3

    new-instance v3, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    return-object v3
.end method
