.class final Lcom/tencent/tencentmap/mapsdk/maps/a/ef$4;
.super Ljava/lang/Object;
.source "GLMapView.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/ef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/ef;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ef;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "name"

    .prologue
    .line 193
    const-string v1, "poi_icon.png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const-string v0, "poi_icon_file.png"

    .line 254
    .local v0, strFileName:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ef;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ef;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 291
    return-object v1

    .line 201
    .end local v0           #strFileName:Ljava/lang/String;
    :cond_0
    const-string v1, "poi_icon_navi.png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    const-string v0, "poi_icon_file_nav.png"

    .restart local v0       #strFileName:Ljava/lang/String;
    goto :goto_0

    .line 204
    .end local v0           #strFileName:Ljava/lang/String;
    :cond_1
    const-string v1, "poi_icon_sat.png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    const-string v0, "poi_icon_file_sat.png"

    .restart local v0       #strFileName:Ljava/lang/String;
    goto :goto_0

    .line 207
    .end local v0           #strFileName:Ljava/lang/String;
    :cond_2
    const-string v1, "NationalHighway.png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    const-string v0, "national_highway.png"

    .restart local v0       #strFileName:Ljava/lang/String;
    goto :goto_0

    .line 210
    .end local v0           #strFileName:Ljava/lang/String;
    :cond_3
    const-string v1, "ProvinceHighway.png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 211
    const-string v0, "province_highway.png"

    .restart local v0       #strFileName:Ljava/lang/String;
    goto :goto_0

    .line 213
    .end local v0           #strFileName:Ljava/lang/String;
    :cond_4
    const-string v1, "NationalHighway_Satellite.png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 214
    const-string v0, "national_highway_sat.png"

    .restart local v0       #strFileName:Ljava/lang/String;
    goto :goto_0

    .line 216
    .end local v0           #strFileName:Ljava/lang/String;
    :cond_5
    const-string v1, "ProvinceHighway_Satellite.png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 217
    const-string v0, "province_highway_sat.png"

    .restart local v0       #strFileName:Ljava/lang/String;
    goto :goto_0

    .line 219
    .end local v0           #strFileName:Ljava/lang/String;
    :cond_6
    const-string v1, "National.png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 220
    const-string v0, "national.png"

    .restart local v0       #strFileName:Ljava/lang/String;
    goto :goto_0

    .line 222
    .end local v0           #strFileName:Ljava/lang/String;
    :cond_7
    const-string v1, "National_Satellite.png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 223
    const-string v0, "national_sat.png"

    .restart local v0       #strFileName:Ljava/lang/String;
    goto :goto_0

    .line 225
    .end local v0           #strFileName:Ljava/lang/String;
    :cond_8
    const-string v1, "Province.png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 226
    const-string v0, "province.png"

    .restart local v0       #strFileName:Ljava/lang/String;
    goto :goto_0

    .line 228
    .end local v0           #strFileName:Ljava/lang/String;
    :cond_9
    const-string v1, "Province_Satellite.png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 229
    const-string v0, "province_sat.png"

    .restart local v0       #strFileName:Ljava/lang/String;
    goto :goto_0

    .line 231
    .end local v0           #strFileName:Ljava/lang/String;
    :cond_a
    const-string v1, "color_texture.png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 232
    const-string v0, "color_texture"

    .line 234
    .restart local v0       #strFileName:Ljava/lang/String;
    goto/16 :goto_0

    .line 235
    .end local v0           #strFileName:Ljava/lang/String;
    :cond_b
    const-string v1, "color_arrow_texture.png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 236
    const-string v0, "color_arrow_texture"

    .line 238
    .restart local v0       #strFileName:Ljava/lang/String;
    goto/16 :goto_0

    .line 239
    .end local v0           #strFileName:Ljava/lang/String;
    :cond_c
    const-string v1, "color_point_texture.png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 240
    const-string v0, "color_point_texture.png"

    .restart local v0       #strFileName:Ljava/lang/String;
    goto/16 :goto_0

    .line 242
    .end local v0           #strFileName:Ljava/lang/String;
    :cond_d
    const-string v1, "color_texture_cap.png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 243
    const-string v0, "color_texture_cap.png"

    .restart local v0       #strFileName:Ljava/lang/String;
    goto/16 :goto_0

    .line 245
    .end local v0           #strFileName:Ljava/lang/String;
    :cond_e
    const-string v1, "route_arrow_texture.png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 246
    const-string v0, "route_arrow_texture"

    .line 248
    .restart local v0       #strFileName:Ljava/lang/String;
    goto/16 :goto_0

    .line 249
    .end local v0           #strFileName:Ljava/lang/String;
    :cond_f
    const-string v1, "subway_station.png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 250
    const-string v0, "subway_station.png"

    .restart local v0       #strFileName:Ljava/lang/String;
    goto/16 :goto_0

    .line 253
    .end local v0           #strFileName:Ljava/lang/String;
    :cond_10
    move-object v0, p1

    .restart local v0       #strFileName:Ljava/lang/String;
    goto/16 :goto_0
.end method
