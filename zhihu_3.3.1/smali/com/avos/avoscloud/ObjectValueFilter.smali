.class public Lcom/avos/avoscloud/ObjectValueFilter;
.super Ljava/lang/Object;
.source "ObjectValueFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ValueFilter;


# static fields
.field public static final instance:Lcom/avos/avoscloud/ObjectValueFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/avos/avoscloud/ObjectValueFilter;

    invoke-direct {v0}, Lcom/avos/avoscloud/ObjectValueFilter;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/ObjectValueFilter;->instance:Lcom/avos/avoscloud/ObjectValueFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    instance-of v0, p3, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    instance-of v0, p3, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 20
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 22
    :cond_1
    return-object p3
.end method
