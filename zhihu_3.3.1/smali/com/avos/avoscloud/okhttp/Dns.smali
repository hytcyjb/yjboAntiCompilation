.class public interface abstract Lcom/avos/avoscloud/okhttp/Dns;
.super Ljava/lang/Object;
.source "Dns.java"


# static fields
.field public static final SYSTEM:Lcom/avos/avoscloud/okhttp/Dns;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/avos/avoscloud/okhttp/Dns$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/Dns$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/okhttp/Dns;->SYSTEM:Lcom/avos/avoscloud/okhttp/Dns;

    return-void
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end method
